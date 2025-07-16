// lib/Data/AppExceptions.dart

class AppException implements Exception {
  final String? _message;
  final String? _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    // Ye function error message ko format karega
    return '$_prefix$_message';
  }
}

// Ye tab use hogi jab internet na ho ya server se connect na ho paye
class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication: ');
}

// Ye tab use hogi jab API ko ghalat request bheji jaye (e.g., status code 400)
class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, 'Invalid Request: ');
}

// Ye tab use hogi jab user authorized na ho (e.g., status code 401 or 403)
class UnauthorisedException extends AppException {
  UnauthorisedException([String? message])
      : super(message, 'Unauthorised Request: ');
}

// Ye tab use hogi jab user ne koi ghalat input diya ho
class InvalidInputException extends AppException {
  // Aapke screenshot mein yahan copy-paste ki ghalti thi, usko theek kar diya hai
  InvalidInputException([String? message]) : super(message, 'Invalid Input: ');
}