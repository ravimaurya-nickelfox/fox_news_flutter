
import 'package:flutter/material.dart';

class Response {

  String statusCode;
  Map data;
  Error errors;

  Response({@required this.statusCode, @required this.data, this.errors});

}