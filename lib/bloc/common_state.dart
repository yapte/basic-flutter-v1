import 'package:basic/bloc/test/test_state.dart';
import 'package:flutter/foundation.dart';

///
/// Abstraction for common state for every BLoC
///
/// You have to implement abstract state of X-BLoC to use common states in X-BLoC stream
///
abstract class CommonState implements TestState {
  @override
  List<Object> get props => [];

  @override
  bool get stringify => false;
}

class InitialState extends CommonState {}

class InProgressState extends CommonState {}

// class SuccessState extends CommonState {}

class UnauthorizedState extends CommonState {}

class ErrorState extends CommonState {
  final int code;
  final String message;
  final Function onUserAction;
  ErrorState({@required this.message, this.code, this.onUserAction}) : assert(message != null);

  @override
  List<Object> get props => [code, message];
}

class FailureState extends CommonState {
  final String message;
  final Function onUserAction;
  FailureState({this.onUserAction, this.message = ''});
}
