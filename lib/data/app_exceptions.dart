
class AppException implements Exception {
 final String? _message, _prefix;
 // if the above statement gives any error, use this instead
 // final _message, _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix $_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException(String? message)
      : super(message, 'Error During Communication');
}

class BadRequestException extends AppException {
  BadRequestException(String? message) : super(message, 'Invalid request');
}

class UnauthorisedException extends AppException {
  UnauthorisedException(String? message)
      : super(message, 'Unauthorised request');
}

class InvalidInputException extends AppException {
  InvalidInputException(String? message)
      : super(message, 'Invalid input');
}