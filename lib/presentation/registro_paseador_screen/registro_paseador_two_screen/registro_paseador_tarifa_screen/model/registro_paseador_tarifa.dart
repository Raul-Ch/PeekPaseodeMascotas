import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

addPaseadorLast(int cost, String exp) async {
  final paseador = FirebaseAuth.instance.currentUser!;
  FirebaseFirestore.instance.collection('paseadores').doc(paseador.uid).update({
    'Tarifa': cost,
    'Experiencia': exp,
  });
}
