import 'http_result.dart';

abstract class IHttpClient {
  Future<HttpResult> get(Uri uri, {Map<String, String> headers});
  Future<HttpResult> post(Uri uri, String body, {Map<String, String> headers});
}
