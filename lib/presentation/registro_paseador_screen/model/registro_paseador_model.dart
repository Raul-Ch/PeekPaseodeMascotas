import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

addPaseadorDetails(
    String email,
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
  final paseador = FirebaseAuth.instance.currentUser!;
  FirebaseFirestore.instance.collection('paseadores').doc(paseador.uid).set({
    'Correo': email,
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
    'ID': paseador.uid,
  });
}
