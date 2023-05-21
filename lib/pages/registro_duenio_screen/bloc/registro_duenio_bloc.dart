import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:peek_app/pages/registro_duenio_screen/models/registro_duenio_model.dart';
part 'registro_duenio_event.dart';
part 'registro_duenio_state.dart';

class RegistroDuenioBloc
    extends Bloc<RegistroDuenioEvent, RegistroDuenioState> {
  RegistroDuenioBloc(RegistroDuenioState initialState) : super(initialState) {
    on<RegistroDuenioInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistroDuenioInitialEvent event,
    Emitter<RegistroDuenioState> emit,
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
