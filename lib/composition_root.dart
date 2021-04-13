import 'package:challenge_app/infrastructure/cache/shared_manager.dart';
import 'package:challenge_app/presentation/pages/auth_page.dart';
import 'package:challenge_app/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'infrastructure/auth/auth_api.dart';
import 'infrastructure/auth/i_auth_api.dart';
import 'infrastructure/core/http_client.dart';
import 'infrastructure/core/i_http_client.dart';
import 'package:http/http.dart';

class CompositionRoot {
  static String _baseUrl;
  static IHttpClient _httpClient;
  static Client _client = Client();
  static IAuthApi _authApi;

  static configure() {
    _baseUrl = 'eu-api.backendless.com';
    _httpClient = HttpClient(_client);
    _authApi = AuthApi(_httpClient, _baseUrl);
  }

  static Future<Widget> startPage() async {
    final token = SharedManager.instance.getStringValue(SharedKeys.TOKEN);
    return token == null ? composeAuthUI() : composeHomeUI();
    //return composeAuthUI();
  }

  static Widget composeAuthUI() {
    return AuthPage(_authApi);
  }

  static Widget composeHomeUI() {
    return HomePage();
  }
}
