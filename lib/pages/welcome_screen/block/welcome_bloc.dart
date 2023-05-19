import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:peek_app/pages/welcome_screen/models/welcome_model.dart';
part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc(WelcomeState initialState) : super(initialState) {
    on<WelcomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeInitialEvent event,
    Emitter<WelcomeState> emit,
  ) async {}
}
