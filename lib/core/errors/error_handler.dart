import 'package:dio/dio.dart';

import 'api/api_error_handler.dart';
import 'api/response_code.dart';
import 'failure.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      failure = APIErrorHandler.handleAPIError(error);
    } else {
      failure = Failure(
        APIResponseCode.unknown,
        error.toString(),
      );
    }
  }
}
