import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:news_app/Models/AppConfig.dart';
import 'package:news_app/Services/Response.dart';

class APIRequest {

  static final AppConfig config = AppConfig();
  final Map<String, String> headers = {
    HttpHeaders.authorizationHeader: config.key
  };

  String endpoint;
  String queryParams;

  APIRequest({this.endpoint, this.queryParams});

  Future<APIResponse> newsRequest(String key) async {
    try {
      final String url = '${config.url}$endpoint?${this.queryParams}';
      Response response = await get(url, headers: headers);
      Map jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
      return APIResponse(data: jsonResponse[key], statusCode: "ok", errors: null);
    } catch(ex) {
      return APIResponse(data: null, statusCode: "error", errors: ex);
    }
  }

}