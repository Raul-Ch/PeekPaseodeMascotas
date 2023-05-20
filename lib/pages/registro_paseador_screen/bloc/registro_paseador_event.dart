// ignore_for_file: must_be_immutable

part of 'registro_paseador_bloc.dart';

@immutable
abstract class RegistroPaseadorEvent extends Equatable {}

class RegistroPaseadorInitialEvent extends RegistroPaseadorEvent {
  @override
  List<Object?> get props => [];
}
