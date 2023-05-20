// ignore_for_file: must_be_immutable

part of 'olvidar_contrasenia_bloc.dart';

class OlvidarContraseniaState extends Equatable {
  OlvidarContraseniaState({
    this.enteryouremailController,
    this.olvidarContraseniaModelObj,
  });

  TextEditingController? enteryouremailController;

  OlvidarContraseniaModel? olvidarContraseniaModelObj;

  @override
  List<Object?> get props => [
        enteryouremailController,
        olvidarContraseniaModelObj,
      ];
  OlvidarContraseniaState copyWith({
    TextEditingController? enteryouremailController,
    OlvidarContraseniaModel? olvidarContraseniaModelObj,
  }) {
    return OlvidarContraseniaState(
      enteryouremailController:
          enteryouremailController ?? this.enteryouremailController,
      olvidarContraseniaModelObj:
          olvidarContraseniaModelObj ?? this.olvidarContraseniaModelObj,
    );
  }
}
