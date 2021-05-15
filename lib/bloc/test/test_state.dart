import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class TestState extends Equatable {
  @override
  List<Object> get props => [];
}

class TestSuccess extends TestState {
  final dynamic pingResponse;
  TestSuccess({@required this.pingResponse}) : assert(pingResponse != null);
}
