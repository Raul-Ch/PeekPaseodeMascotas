import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

addDuenioDetails(
    String name,
    String lastname,
    String lastnameone,
    String date,
    int phone,
    int cp,
    int numstreet,
    String street,
    String mun,
    String city) async {
  final duenio = FirebaseAuth.instance.currentUser!;
  FirebaseFirestore.instance.collection('duenios').doc(duenio.uid).set({
    'Nombre': name,
    'Apellido Paterno': lastname,
    'Apellido Materno': lastnameone,
    'Cumpleaños': date,
    'Telefono': phone,
    'CP': cp,
    'Num Calle': numstreet,
    'Calle': street,
    'Municipio': mun,
    'Ciudad': city,
  });
}
