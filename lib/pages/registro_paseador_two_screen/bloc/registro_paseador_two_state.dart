// ignore_for_file: must_be_immutable

part of 'registro_paseador_two_bloc.dart';

class RegistroPaseadorTwoState extends Equatable {
  RegistroPaseadorTwoState({
    this.rateController,
    this.experienceController,
    this.registroPaseadorTwoModelObj,
  });

  TextEditingController? rateController;

  TextEditingController? experienceController;

  RegistroPaseadorTwoModel? registroPaseadorTwoModelObj;

  @override
  List<Object?> get props => [
        rateController,
        experienceController,
        registroPaseadorTwoModelObj,
      ];
  RegistroPaseadorTwoState copyWith({
    TextEditingController? rateController,
    TextEditingController? experienceController,
    RegistroPaseadorTwoModel? registroPaseadorTwoModelObj,
  }) {
    return RegistroPaseadorTwoState(
      rateController: rateController ?? this.rateController,
      experienceController: experienceController ?? this.experienceController,
      registroPaseadorTwoModelObj:
          registroPaseadorTwoModelObj ?? this.registroPaseadorTwoModelObj,
    );
  }
}
