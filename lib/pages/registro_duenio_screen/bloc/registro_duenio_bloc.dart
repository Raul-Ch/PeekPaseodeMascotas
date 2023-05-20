import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/registro_duenio_item_model.dart';
import 'package:peek_app/pages/registro_duenio_screen/models/registro_duenio_model.dart';
part 'registro_duenio_event.dart';
part 'registro_duenio_state.dart';

class RegistroDuenioBloc
    extends Bloc<RegistroDuenioEvent, RegistroDuenioState> {
  RegistroDuenioBloc(RegistroDuenioState initialState) : super(initialState) {
    on<RegistroDuenioInitialEvent>(_onInitialize);
  }

  List<RegistroDuenioItemModel> fillRegistroDuenioItemList() {
    return List.generate(6, (index) => RegistroDuenioItemModel());
  }

  _onInitialize(
    RegistroDuenioInitialEvent event,
    Emitter<RegistroDuenioState> emit,
  ) async {
    emit(state.copyWith(
        nameinputController: TextEditingController(),
        apellido1inputController: TextEditingController(),
        apellido2inputController: TextEditingController(),
        confirmpasswordController: TextEditingController(),
        phoneinputController: TextEditingController(),
        cpinputController: TextEditingController(),
        streetnuminputController: TextEditingController(),
        streetinputController: TextEditingController(),
        muninputController: TextEditingController(),
        cityinputController: TextEditingController()));
    emit(state.copyWith(
        registroDuenioModelObj: state.registroDuenioModelObj
            ?.copyWith(registroDuenioItemList: fillRegistroDuenioItemList())));
  }
}
