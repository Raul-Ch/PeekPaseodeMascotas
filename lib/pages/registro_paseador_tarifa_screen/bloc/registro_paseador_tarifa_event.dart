// ignore_for_file: must_be_immutable

part of 'registro_paseador_tarifa_bloc.dart';

@immutable
abstract class RegistroPaseadorTarifaEvent extends Equatable {}

class RegistroPaseadorTarifaInitialEvent extends RegistroPaseadorTarifaEvent {
  @override
  List<Object?> get props => [];
}
