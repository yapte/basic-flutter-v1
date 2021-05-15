import 'package:basic/bloc/bloc_exception_handler.dart';
import 'package:basic/bloc/common_state.dart';
import 'package:basic/bloc/test/test_event.dart';
import 'package:basic/bloc/test/test_state.dart';
import 'package:basic/repositories/test_repository.dart';
import 'package:basic/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestRepository _testRepository = serviceLocator();
  TestBloc() : super(InitialState());

  @override
  Stream<TestState> mapEventToState(TestEvent event) async* {
    if (event is FetchTest) {
      yield* _fetch(event.pingRequest);
    }
  }

  Stream<TestState> _fetch(dynamic pingRequest) async* {
    yield InProgressState();
    try {
      yield TestSuccess(pingResponse: _testRepository.ping(pingRequest));
    } catch (e) {
      blocExceptionHandler(e);
    }
  }
}
