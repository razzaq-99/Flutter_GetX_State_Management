class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_message $_prefix';
  }
}

class internetException extends AppException {
  internetException([String? message]) : super(message, 'No internet');
}

class RequestTimeOutException extends AppException {
  RequestTimeOutException([String? message]) : super(message, 'Request Time Out');
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, 'Server Request Exception');
}

class  InavlidUrlException extends AppException {
  InavlidUrlException([String? message]) : super(message, 'Invalid Url Exception');
}

class  FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message, 'Error while Communication');
}


