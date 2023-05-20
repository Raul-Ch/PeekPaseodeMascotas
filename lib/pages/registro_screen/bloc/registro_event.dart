// ignore_for_file: must_be_immutable

part of 'registro_bloc.dart';

@immutable
abstract class RegistroEvent extends Equatable {}

class RegistroInitialEvent extends RegistroEvent {
  @override
  List<Object?> get props => [];
}
