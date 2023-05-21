import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class RegistroDuenioModel extends Equatable {
  RegistroDuenioModel copyWith() {
    return RegistroDuenioModel();
  }

  @override
  List<Object?> get props => [];
}

addDuenioDetails(
    String name,
    String lastname,
    String lastnameone,
    DateTime date,
    int phone,
    int cp,
    int numstreet,
    String street,
    String mun,
    String city) async {
  final duenio =
      FirebaseAuth.instance.collection('duenios').doc(duenio.uid).set({});
}
