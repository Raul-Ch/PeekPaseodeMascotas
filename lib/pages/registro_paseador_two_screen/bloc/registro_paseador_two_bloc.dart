import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:peek_app/pages/registro_paseador_two_screen/models/registro_paseador_two_model.dart';
part 'registro_paseador_two_event.dart';
part 'registro_paseador_two_state.dart';

class RegistroPaseadorTwoBloc
    extends Bloc<RegistroPaseadorTwoEvent, RegistroPaseadorTwoState> {
  RegistroPaseadorTwoBloc(RegistroPaseadorTwoState initialState)
      : super(initialState) {
    on<RegistroPaseadorTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistroPaseadorTwoInitialEvent event,
    Emitter<RegistroPaseadorTwoState> emit,
  ) async {
    emit(state.copyWith(
        rateController: TextEditingController(),
        experienceController: TextEditingController()));
  }
}
