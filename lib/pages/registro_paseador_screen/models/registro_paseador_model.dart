import 'package:equatable/equatable.dart';
import 'registro_item_model.dart';

// ignore: must_be_immutable
class RegistroPaseadorModel extends Equatable {
  RegistroPaseadorModel({this.registroItemList = const []});

  List<RegistroItemModel> registroItemList;

  RegistroPaseadorModel copyWith({List<RegistroItemModel>? registroItemList}) {
    return RegistroPaseadorModel(
      registroItemList: registroItemList ?? this.registroItemList,
    );
  }

  @override
  List<Object?> get props => [registroItemList];
}
