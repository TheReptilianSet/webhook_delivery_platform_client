import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'auth_dtos.dart';

part 'identity_api.g.dart';

@RestApi()
abstract class IdentityApi {
  factory IdentityApi(Dio dio, {String? baseUrl}) = _IdentityApi;

  @POST('/api/v1/auth/register')
  Future<RegistrationResponseDto> register(@Body() RegisterRequestDto request);

  @POST('/api/v1/auth/login')
  Future<TokenResponseDto> login(@Body() LoginRequestDto request);

  @POST('/api/v1/auth/refresh')
  Future<TokenResponseDto> refresh(@Body() RefreshRequestDto request);

  @POST('/api/v1/auth/logout')
  Future<void> logout(@Body() LogoutRequestDto request);

  @GET('/api/v1/me')
  Future<MeResponseDto> me();
}
