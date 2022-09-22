import 'dart:async';
import 'dart:io';
import 'package:get/get_connect/connect.dart';
import 'package:getx_boilerplate/app/utils/logger.dart';

import 'api_exception.dart';
import 'api_request_data.dart';

class APIProvider {
  static const requestTimeOut = Duration(seconds: 25);
  final _client = GetConnect(timeout: requestTimeOut);
  Map<String, String> _header = {
    'Content-Type': 'application/json; charset=UTF-8'
  };
  static final _singleton = APIProvider();
  static APIProvider get instance => _singleton;

  void updateHeader(String token) {
    _header = {
      'Content-Type': 'application/json; charset=UTF-8',
      'X-Api-Key': token
    };
  }

  /// Get request
  Future onGet(String url, {Map<String, String>? header}) {
    return request(ApiRequestData(url, method: HTTPMethod.get));
  }

  /// Post request
  Future onPost(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? header,
  }) {
    return request(ApiRequestData(url, method: HTTPMethod.post, body: body));
  }

  /// Put request
  Future onPut(
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? header,
  }) {
    return request(ApiRequestData(url, method: HTTPMethod.put, body: body));
  }

  /// Delete request
  Future onDelete(String url, {Map<String, String>? header}) {
    return request(ApiRequestData(url, method: HTTPMethod.delete));
  }

  Future request(ApiRequestData request) async {
    try {
      logger.d(request.headers ?? _header);
      final response = await _client.request(
        request.url,
        request.method.string,
        headers: request.headers ?? _header,
        query: request.query,
        body: request.body,
      );
      return _returnResponse(response);
    } on TimeoutException catch (_) {
      throw TimeOutException(null);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  dynamic _returnResponse(Response<dynamic> response) {
    switch (response.statusCode) {
      case 200:
        return response.body;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 404:
        throw BadRequestException('Not found');
      case 500:
        throw FetchDataException('Internal Server Error');
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
