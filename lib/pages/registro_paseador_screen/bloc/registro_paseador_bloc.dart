import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/registro_item_model.dart';
import 'package:peek_app/pages/registro_paseador_screen/models/registro_paseador_model.dart';
part 'registro_paseador_event.dart';
part 'registro_paseador_state.dart';

class RegistroPaseadorBloc
    extends Bloc<RegistroPaseadorEvent, RegistroPaseadorState> {
  RegistroPaseadorBloc(RegistroPaseadorState initialState)
      : super(initialState) {
    on<RegistroPaseadorInitialEvent>(_onInitialize);
  }

  List<RegistroItemModel> fillRegistroItemList() {
    return List.generate(6, (index) => RegistroItemModel());
  }

  _onInitialize(
    RegistroPaseadorInitialEvent event,
    Emitter<RegistroPaseadorState> emit,
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
        registroPaseadorModelObj: state.registroPaseadorModelObj
            ?.copyWith(registroItemList: fillRegistroItemList())));
  }
}
