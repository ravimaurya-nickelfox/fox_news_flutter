
import 'package:flutter/material.dart';

class APIResponse {

  String statusCode;
  List data;
  Error errors;

  APIResponse({@required this.statusCode, @required this.data, this.errors});

}