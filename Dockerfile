# syntax=docker/dockerfile:1.7

FROM debian:bookworm-slim@sha256:88200866dfff7ea7f5cbcb6ec7c8a701889efe6fe859fe64d6990e4b07ea4171 AS flutter-sdk

ARG FLUTTER_VERSION=3.44.1
ARG FLUTTER_REVISION=924134a44c189315be2148659913dda1671cbe99

# Package versions intentionally follow the pinned Debian release's security repository.
# hadolint ignore=DL3008
RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
        ca-certificates \
        curl \
        git \
        unzip \
        xz-utils \
    && rm -rf /var/lib/apt/lists/*

RUN git clone \
        --branch "${FLUTTER_VERSION}" \
        --depth 1 \
        https://github.com/flutter/flutter.git \
        /opt/flutter \
    && test "$(git -C /opt/flutter rev-parse HEAD)" = "${FLUTTER_REVISION}"

ENV PATH="/opt/flutter/bin:/opt/flutter/bin/cache/dart-sdk/bin:${PATH}" \
    PUB_CACHE=/root/.pub-cache

RUN flutter --disable-analytics \
    && dart --disable-analytics \
    && flutter precache --web

FROM flutter-sdk AS build

WORKDIR /workspace

COPY pubspec.yaml pubspec.lock ./
RUN --mount=type=cache,id=webhook-client-pub-v2,target=/root/.pub-cache,sharing=locked \
    flutter pub get --enforce-lockfile --no-example

COPY . .

ARG API_BASE_URL
RUN --mount=type=cache,id=webhook-client-pub-v2,target=/root/.pub-cache,sharing=locked \
    case "${API_BASE_URL}" in \
      http://*|https://*) ;; \
      *) echo "API_BASE_URL must be an absolute HTTP(S) URL" >&2; exit 1 ;; \
    esac \
    && flutter build web --release \
        --dart-define="API_BASE_URL=${API_BASE_URL}"

FROM nginx:1.31.4-alpine@sha256:db35bfc6b2951e7f8a72db5db120288c127ffaeeb4a6d4b95a26fead017d5913 AS runtime

COPY docker/nginx.conf /etc/nginx/nginx.conf
COPY --from=build /workspace/build/web /usr/share/nginx/html

USER 101:101
EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
  CMD ["wget", "--quiet", "--output-document=-", "http://127.0.0.1:8080/healthz"]

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
