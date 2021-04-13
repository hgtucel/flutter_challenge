import 'package:challenge_app/infrastructure/core/http_result.dart';
import 'i_http_client.dart';
import 'package:http/http.dart';

class HttpClient implements IHttpClient {
  final Client _client;

  HttpClient(this._client);

  @override
  Future<HttpResult> get(Uri uri, {Map<String, String> headers}) async {
    final response = await _client.get(uri, headers: headers);
    return HttpResult(data: response.body, status: _setStatus(response));
  }

  @override
  Future<HttpResult> post(Uri uri, String body,
      {Map<String, String> headers}) async {
    final response = await _client.post(uri, body: body, headers: headers);
    return HttpResult(data: response.body, status: _setStatus(response));
  }

  Status _setStatus(Response response) {
    if (response.statusCode != 200) return Status.failure;
    return Status.success;
  }
}
