// ignore_for_file: must_be_immutable

part of 'olvidar_contrasenia_bloc.dart';

@immutable
abstract class OlvidarContraseniaEvent extends Equatable {}

class OlvidarContraseniaInitialEvent extends OlvidarContraseniaEvent {
  @override
  List<Object?> get props => [];
}
