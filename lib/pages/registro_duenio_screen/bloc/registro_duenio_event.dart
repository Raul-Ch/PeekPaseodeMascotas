// ignore_for_file: must_be_immutable

part of 'registro_duenio_bloc.dart';

@immutable
abstract class RegistroDuenioEvent extends Equatable {}

class RegistroDuenioInitialEvent extends RegistroDuenioEvent {
  @override
  List<Object?> get props => [];
}
