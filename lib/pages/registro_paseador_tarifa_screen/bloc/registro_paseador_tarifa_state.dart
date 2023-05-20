// ignore_for_file: must_be_immutable

part of 'registro_paseador_tarifa_bloc.dart';

class RegistroPaseadorTarifaState extends Equatable {
  RegistroPaseadorTarifaState({
    this.rateController,
    this.experienceController,
    this.registroPaseadorTarifaModelObj,
  });

  TextEditingController? rateController;

  TextEditingController? experienceController;

  RegistroPaseadorTarifaModel? registroPaseadorTarifaModelObj;

  @override
  List<Object?> get props => [
        rateController,
        experienceController,
        registroPaseadorTarifaModelObj,
      ];
  RegistroPaseadorTarifaState copyWith({
    TextEditingController? rateController,
    TextEditingController? experienceController,
    RegistroPaseadorTarifaModel? registroPaseadorTarifaModelObj,
  }) {
    return RegistroPaseadorTarifaState(
      rateController: rateController ?? this.rateController,
      experienceController: experienceController ?? this.experienceController,
      registroPaseadorTarifaModelObj:
          registroPaseadorTarifaModelObj ?? this.registroPaseadorTarifaModelObj,
    );
  }
}
