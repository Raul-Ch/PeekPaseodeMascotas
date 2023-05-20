import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:peek_app/pages/olvidar_contrasenia_screen/models/olvidar_contrasenia_model.dart';
part 'olvidar_contrasenia_event.dart';
part 'olvidar_contrasenia_state.dart';

class OlvidarContraseniaBloc
    extends Bloc<OlvidarContraseniaEvent, OlvidarContraseniaState> {
  OlvidarContraseniaBloc(OlvidarContraseniaState initialState)
      : super(initialState) {
    on<OlvidarContraseniaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OlvidarContraseniaInitialEvent event,
    Emitter<OlvidarContraseniaState> emit,
  ) async {
    emit(state.copyWith(
      enteryouremailController: TextEditingController(),
    ));
  }
}
