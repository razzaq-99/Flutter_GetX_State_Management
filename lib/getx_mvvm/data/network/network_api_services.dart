import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_getx/getx_mvvm/data/app_exceptions.dart';
import 'package:flutter_getx/getx_mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String Url) async {
    if (kDebugMode) {
      print(Url);
    }
    dynamic jsonResponse;
    try {
      final response =
          await http.get(Uri.parse(Url)).timeout(Duration(seconds: 10));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw internetException('');
    } on RequestTimeOutException {
      throw RequestTimeOutException('');
    }
    return jsonResponse;
  }

  Future<dynamic> postApi(var data, String Url) async {
    if (kDebugMode) {
      print(Url);
      print(data);
    }
    dynamic jsonResponse;
    try {
      final response =
          await http.post(Uri.parse(Url),body: jsonEncode(data)).timeout(Duration(seconds: 10));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw internetException('');
    } on RequestTimeOutException {
      throw RequestTimeOutException('');
    }
    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      case 400:
        throw InavlidUrlException('');

      default:
        throw FetchDataException('' + response.statusCode.toString());
    }
  }
}
