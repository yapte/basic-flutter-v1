import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class TestEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchTest extends TestEvent {
  final dynamic pingRequest;
  FetchTest({@required this.pingRequest}) : assert(pingRequest != null);
}
