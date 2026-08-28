import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/app_router.dart';
import '../../../core/presentation/app_failure_l10n.dart';
import '../../../core/presentation/brand_theme.dart';
import '../../../core/presentation/relay_trace_mark.dart';
import '../../../l10n/app_localizations.dart';
import 'session_cubit.dart';
import 'session_state.dart';

final class LoginPage extends StatefulWidget {
  const LoginPage({this.initialEmail, super.key});

  final String? initialEmail;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: widget.initialEmail);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _AuthLayout(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              l10n.signIn,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Container(width: 52, height: 3, color: BrandColors.route),
            const SizedBox(height: 30),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              decoration: InputDecoration(
                labelText: l10n.email,
                prefixIcon: const Icon(Icons.alternate_email),
              ),
              validator: (value) => value == null || value.trim().isEmpty
                  ? l10n.requiredField
                  : null,
            ),
            const SizedBox(height: 14),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              autofillHints: const [AutofillHints.password],
              decoration: InputDecoration(
                labelText: l10n.password,
                prefixIcon: const Icon(Icons.lock_outline),
              ),
              validator: (value) =>
                  value == null || value.isEmpty ? l10n.requiredField : null,
            ),
            const SizedBox(height: 18),
            BlocBuilder<SessionCubit, SessionState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (state.failure case final failure?) ...[
                      _AuthFailure(message: failure.localized(context)),
                      const SizedBox(height: 14),
                    ],
                    FilledButton(
                      onPressed: state.submitting ? null : _submit,
                      child: state.submitting
                          ? const SizedBox.square(
                              dimension: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.login, size: 19),
                                const SizedBox(width: 8),
                                Text(l10n.signIn),
                              ],
                            ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () => const RegisterRoute().go(context),
              child: Text(l10n.noAccount),
            ),
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState?.validate() != true) return;
    context.read<SessionCubit>().login(
      email: _emailController.text.trim(),
      password: _passwordController.text,
    );
  }
}

final class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _organizationController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _organizationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocListener<SessionCubit, SessionState>(
      listenWhen: (previous, current) => previous.event != current.event,
      listener: (context, state) {
        if (state.event == SessionEvent.registrationComplete) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(l10n.registrationComplete)));
          LoginRoute(email: state.suggestedEmail).go(context);
          context.read<SessionCubit>().consumeEvent();
        }
      },
      child: _AuthLayout(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.createAccount,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Container(width: 52, height: 3, color: BrandColors.endpoint),
              const SizedBox(height: 30),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                decoration: InputDecoration(
                  labelText: l10n.email,
                  prefixIcon: const Icon(Icons.alternate_email),
                ),
                validator: _required,
              ),
              const SizedBox(height: 14),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                autofillHints: const [AutofillHints.newPassword],
                decoration: InputDecoration(
                  labelText: l10n.password,
                  helperText: l10n.passwordHint,
                  prefixIcon: const Icon(Icons.lock_outline),
                ),
                validator: (value) => value == null || value.length < 12
                    ? l10n.passwordHint
                    : null,
              ),
              const SizedBox(height: 14),
              TextFormField(
                controller: _organizationController,
                decoration: InputDecoration(
                  labelText: l10n.organizationName,
                  prefixIcon: const Icon(Icons.domain_outlined),
                ),
                validator: _required,
              ),
              const SizedBox(height: 18),
              BlocBuilder<SessionCubit, SessionState>(
                builder: (context, state) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (state.failure case final failure?) ...[
                      _AuthFailure(message: failure.localized(context)),
                      const SizedBox(height: 14),
                    ],
                    FilledButton.icon(
                      onPressed: state.submitting ? null : _submit,
                      icon: const Icon(Icons.person_add_outlined, size: 19),
                      label: Text(l10n.createAccount),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () => const LoginRoute().go(context),
                child: Text(l10n.haveAccount),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _required(String? value) => value == null || value.trim().isEmpty
      ? AppLocalizations.of(context).requiredField
      : null;

  void _submit() {
    if (_formKey.currentState?.validate() != true) return;
    context.read<SessionCubit>().register(
      email: _emailController.text.trim(),
      password: _passwordController.text,
      organizationName: _organizationController.text.trim(),
    );
  }
}

final class SessionRestoringPage extends StatelessWidget {
  const SessionRestoringPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: BrandColors.ink,
    body: Center(
      child: Semantics(
        label: AppLocalizations.of(context).sessionRestoring,
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RelayConsoleWordmark(darkBackground: true, markSize: 54),
            SizedBox(height: 24),
            SizedBox(
              width: 140,
              child: LinearProgressIndicator(
                minHeight: 3,
                color: BrandColors.route,
                backgroundColor: Colors.white12,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

final class _AuthLayout extends StatelessWidget {
  const _AuthLayout({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: LayoutBuilder(
      builder: (context, constraints) {
        final wide = constraints.maxWidth >= 860;
        if (wide) {
          return Row(
            children: [
              SizedBox(
                width: constraints.maxWidth.clamp(360, 520) * 0.88,
                child: const _AuthBrandPanel(),
              ),
              Expanded(child: _AuthFormArea(child: child)),
            ],
          );
        }
        return Column(
          children: [
            const SizedBox(height: 148, child: _AuthBrandPanel(compact: true)),
            Expanded(child: _AuthFormArea(child: child)),
          ],
        );
      },
    ),
  );
}

final class _AuthBrandPanel extends StatelessWidget {
  const _AuthBrandPanel({this.compact = false});

  final bool compact;

  @override
  Widget build(BuildContext context) => ColoredBox(
    color: BrandColors.ink,
    child: ClipRect(
      child: Stack(
        children: [
          Positioned(
            right: compact ? -56 : -120,
            bottom: compact ? -72 : -90,
            child: Opacity(
              opacity: 0.08,
              child: RelayTraceMark(
                size: compact ? 210 : 390,
                monochromeColor: Colors.white,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: RelayConsoleWordmark(
                darkBackground: true,
                markSize: compact ? 48 : 72,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

final class _AuthFormArea extends StatelessWidget {
  const _AuthFormArea({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => ColoredBox(
    color: BrandColors.surface,
    child: SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: constraints.maxWidth < 600 ? 24 : 56,
            vertical: 32,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight - 64),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 430),
                child: child,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

final class _AuthFailure extends StatelessWidget {
  const _AuthFailure({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(12),
    decoration: const BoxDecoration(
      color: Color(0xFFFFF5F5),
      border: Border(left: BorderSide(color: BrandColors.error, width: 3)),
    ),
    child: Text(message, style: const TextStyle(color: BrandColors.error)),
  );
}
