import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:peek_app/pages/registro_screen/models/registro_model.dart';
part 'registro_event.dart';
part 'registro_state.dart';

class RegistroBloc extends Bloc<RegistroEvent, RegistroState> {
  RegistroBloc(RegistroState initialState) : super(initialState) {
    on<RegistroInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistroInitialEvent event,
    Emitter<RegistroState> emit,
  ) async {}
}
