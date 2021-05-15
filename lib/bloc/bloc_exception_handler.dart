import 'dart:io';

import 'package:basic/bloc/common_state.dart';
import 'package:basic/constants/locale_keys.g.dart';
import 'package:basic/services/logger.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

///
/// Default exception handler for BLoC.
///
/// If You want to create your own handler for exception
/// put it before this method is called
///
Stream<CommonState> blocExceptionHandler(Exception e) async* {
  // TODO:
  logger.d(e);
  if (e is Exception) {
    if (e is DioError) {
      if (e.response != null) {
        if (e.response.statusCode == 400) {
          yield ErrorState(message: e.response.data['message']);
        } else if (e.response.statusCode == 401) {
          yield UnauthorizedState();
        } else if (e.response.statusCode == 403) {
          yield UnauthorizedState();
        } else if (e.response.statusCode == 404) {
          yield ErrorState(message: 'NOT FOUND');
        } else if (e.response.statusCode > 404) {
          yield FailureState(message: LocaleKeys.unknown_error.tr());
        } else {
          yield FailureState(message: LocaleKeys.unknown_error.tr());
        }
      } else if (e.error is SocketException) {
        yield FailureState(message: LocaleKeys.socket_error.tr());
      } else {
        yield FailureState(message: LocaleKeys.unknown_error.tr());
      }
    } else {
      // TODO:
      // logger.d(e);
      yield FailureState(message: LocaleKeys.unknown_error.tr());
    }
  } else {
    yield FailureState(message: LocaleKeys.unknown_error.tr());
  }
}
