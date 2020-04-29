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
  final String country = "IN";

  APIRequest({this.endpoint, this.queryParams});

  Future<APIResponse> newsRequest() async {
    try {
      final String url = '${config.url}$endpoint?country=$country';
      Response response = await get(url, headers: headers);
      Map jsonResponse = jsonDecode(response.body);
      return APIResponse(data: jsonResponse["articles"], statusCode: "ok", errors: null);
    } catch(ex) {
      return APIResponse(data: null, statusCode: "error", errors: ex);
    }
  }

}