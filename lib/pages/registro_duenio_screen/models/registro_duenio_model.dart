import 'package:equatable/equatable.dart';
import 'registro_duenio_item_model.dart';

// ignore: must_be_immutable
class RegistroDuenioModel extends Equatable {
  RegistroDuenioModel({this.registroDuenioItemList = const []});

  List<RegistroDuenioItemModel> registroDuenioItemList;

  RegistroDuenioModel copyWith(
      {List<RegistroDuenioItemModel>? registroDuenioItemList}) {
    return RegistroDuenioModel(
      registroDuenioItemList:
          registroDuenioItemList ?? this.registroDuenioItemList,
    );
  }

  @override
  List<Object?> get props => [registroDuenioItemList];
}
