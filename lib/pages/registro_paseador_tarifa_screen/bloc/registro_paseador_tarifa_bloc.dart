import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:peek_app/pages/registro_paseador_tarifa_screen/models/registro_paseador_tarifa_model.dart';
part 'registro_paseador_tarifa_event.dart';
part 'registro_paseador_tarifa_state.dart';

class RegistroPaseadorTarifaBloc
    extends Bloc<RegistroPaseadorTarifaEvent, RegistroPaseadorTarifaState> {
  RegistroPaseadorTarifaBloc(RegistroPaseadorTarifaState initialState)
      : super(initialState) {
    on<RegistroPaseadorTarifaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistroPaseadorTarifaInitialEvent event,
    Emitter<RegistroPaseadorTarifaState> emit,
  ) async {
    emit(state.copyWith(
      rateController: TextEditingController(),
      experienceController: TextEditingController(),
    ));
  }
}
