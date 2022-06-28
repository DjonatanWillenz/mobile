import 'package:app/app/global/singletons/setings.system.dart';
import 'package:get/get.dart';

class DwGetConnect extends GetConnect {
  String _contentType;
  Map<String, String> _headers;

  DwGetConnect() {
    if (SettingsSystem.instance.user != null) {
      if (SettingsSystem.instance.user.token != null) {
        _headers = {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          'Authorization': SettingsSystem.instance.user.token
        };
      }
    }
  }

  @override
  Future<Response<T>> post<T>(String url, body,
      {String contentType,
      Map<String, String> headers,
      Map<String, dynamic> query,
      Decoder<T> decoder,
      Progress uploadProgress}) {
    return super.post(
      url,
      body,
      headers: headers,
      contentType: contentType,
      query: query,
      decoder: decoder,
      uploadProgress: uploadProgress,
    );
  }

  @override
  Future<Response<T>> get<T>(
    String url, {
    Map<String, String> headers,
    String contentType,
    Map<String, dynamic> query,
    Decoder<T> decoder,
  }) {
    return super.get(
      url,
      headers: _headers,
      contentType: _contentType,
      query: query,
      decoder: decoder,
    );
  }

  @override
  Future<Response<T>> delete<T>(String url,
      {Map<String, String> headers,
      String contentType,
      Map<String, dynamic> query,
      Decoder<T> decoder}) {
    return super.delete(
      url,
      headers: _headers,
      contentType: _contentType,
      query: query,
      decoder: decoder,
    );
  }
}
