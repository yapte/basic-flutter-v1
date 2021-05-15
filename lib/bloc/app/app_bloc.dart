import 'package:basic/bloc/app/app_event.dart';
import 'package:basic/bloc/app/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitialState());

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    if (event is ChangeAppState) {
      //
    }
  }
}
