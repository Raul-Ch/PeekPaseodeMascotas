// ignore_for_file: must_be_immutable

part of 'registro_paseador_bloc.dart';

class RegistroPaseadorState extends Equatable {
  RegistroPaseadorState({
    this.nameinputController,
    this.apellido1inputController,
    this.apellido2inputController,
    this.confirmpasswordController,
    this.phoneinputController,
    this.cpinputController,
    this.streetnuminputController,
    this.streetinputController,
    this.muninputController,
    this.cityinputController,
    this.registroPaseadorModelObj,
  });

  TextEditingController? nameinputController;

  TextEditingController? apellido1inputController;

  TextEditingController? apellido2inputController;

  TextEditingController? confirmpasswordController;

  TextEditingController? phoneinputController;

  TextEditingController? cpinputController;

  TextEditingController? streetnuminputController;

  TextEditingController? streetinputController;

  TextEditingController? muninputController;

  TextEditingController? cityinputController;

  RegistroPaseadorModel? registroPaseadorModelObj;

  @override
  List<Object?> get props => [
        nameinputController,
        apellido1inputController,
        apellido2inputController,
        confirmpasswordController,
        phoneinputController,
        cpinputController,
        streetnuminputController,
        streetinputController,
        muninputController,
        cityinputController,
        registroPaseadorModelObj,
      ];
  RegistroPaseadorState copyWith({
    TextEditingController? nameinputController,
    TextEditingController? apellido1inputController,
    TextEditingController? apellido2inputController,
    TextEditingController? confirmpasswordController,
    TextEditingController? phoneinputController,
    TextEditingController? cpinputController,
    TextEditingController? streetnuminputController,
    TextEditingController? streetinputController,
    TextEditingController? muninputController,
    TextEditingController? cityinputController,
    RegistroPaseadorModel? registroPaseadorModelObj,
  }) {
    return RegistroPaseadorState(
      nameinputController: nameinputController ?? this.nameinputController,
      apellido1inputController:
          apellido1inputController ?? this.apellido1inputController,
      apellido2inputController:
          apellido2inputController ?? this.apellido2inputController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      phoneinputController: phoneinputController ?? this.phoneinputController,
      cpinputController: cpinputController ?? this.cpinputController,
      streetnuminputController:
          streetnuminputController ?? this.streetnuminputController,
      streetinputController:
          streetinputController ?? this.streetinputController,
      muninputController: muninputController ?? this.muninputController,
      cityinputController: cityinputController ?? this.cityinputController,
      registroPaseadorModelObj:
          registroPaseadorModelObj ?? this.registroPaseadorModelObj,
    );
  }
}
