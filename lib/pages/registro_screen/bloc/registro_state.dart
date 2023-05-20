// ignore_for_file: must_be_immutable

part of 'registro_bloc.dart';

class RegistroState extends Equatable {
  RegistroState({this.registroModelObj});

  RegistroModel? registroModelObj;

  @override
  List<Object?> get props => [
        registroModelObj,
      ];
  RegistroState copyWith({RegistroModel? registroModelObj}) {
    return RegistroState(
      registroModelObj: registroModelObj ?? this.registroModelObj,
    );
  }
}
