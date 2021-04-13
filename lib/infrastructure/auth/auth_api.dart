import 'dart:convert';

import 'package:challenge_app/domain/auth/auth_error_model.dart';
import 'package:challenge_app/domain/auth/auth_model.dart';
import 'package:challenge_app/domain/auth/auth_register_success.dart';
import 'package:challenge_app/domain/auth/login_model.dart';
import 'package:challenge_app/domain/auth/login_success_model.dart';
import 'package:challenge_app/infrastructure/core/http_result.dart';
import 'package:challenge_app/infrastructure/core/i_http_client.dart';

import 'i_auth_api.dart';

class AuthApi implements IAuthApi {
  final IHttpClient httpClient;
  final String baseUrl;

  AuthApi(this.httpClient, this.baseUrl);

  @override
  Future login(LoginModel auth) async {
    final endpoint = Uri.https(baseUrl,
        "/30BA8604-1D75-222D-FFCB-50E506362500/66E6594E-CA57-43C0-A08C-8221F7ACBE9A/users/login");
    final model = jsonEncode(auth.toJson());
    final result = await httpClient.post(endpoint, model);
    if (result.status == Status.failure) {
      var errorJson = jsonDecode(result.data);
      var error = AuthErrorModel.fromJson(errorJson);
      return error;
    }
    final json = jsonDecode(result.data);
    return LoginSuccessModel.fromJson(json);
  }

  @override
  Future logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future register(AuthModel auth) async {
    final endpoint = Uri.https(baseUrl, "register");
    final model = jsonEncode(auth.toJson());
    final result = await httpClient.post(endpoint, model);
    if (result.status == Status.failure) {
      var errorJson = jsonDecode(result.data);
      var error = AuthErrorModel.fromJson(errorJson);
      return error;
    }
    final json = jsonDecode(result.data);
    return AuthRegisterSuccesModel.fromJson(json);
  }
}
