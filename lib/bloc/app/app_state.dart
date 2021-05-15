import 'package:equatable/equatable.dart';

abstract class AppState extends Equatable {
  @override
  List<Object> get props => [];
}

class AppInitialState extends AppState {}

class AppInProgressState extends AppState {}

class AppCurrentState extends AppState {
  final bool isAuthorized;
  final bool hasError;
  final String error;

  AppCurrentState(
    this.isAuthorized,
    this.hasError,
    this.error,
  );
}
