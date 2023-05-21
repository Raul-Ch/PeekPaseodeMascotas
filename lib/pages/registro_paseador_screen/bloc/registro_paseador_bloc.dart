import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:peek_app/pages/registro_paseador_screen/models/registro_paseador_model.dart';
part 'registro_paseador_event.dart';
part 'registro_paseador_state.dart';

class RegistroPaseadorBloc
    extends Bloc<RegistroPaseadorEvent, RegistroPaseadorState> {
  RegistroPaseadorBloc(RegistroPaseadorState initialState)
      : super(initialState) {
    on<RegistroPaseadorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistroPaseadorInitialEvent event,
    Emitter<RegistroPaseadorState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        firstnameController: TextEditingController(),
        lastnameController: TextEditingController(),
        lastnameoneController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmpasswordController: TextEditingController(),
        phoneController: TextEditingController(),
        zipcodeController: TextEditingController(),
        streetnumberController: TextEditingController(),
        streetController: TextEditingController(),
        municipalityController: TextEditingController(),
        cityController: TextEditingController()));
  }
}
