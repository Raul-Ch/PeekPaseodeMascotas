import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

createPet(
  String name,
  String size,
  String type,
  double weight,
  int age,
  bool sick,
  String gender,
  String mood,
  String note,
) async {
  final duenio = FirebaseAuth.instance.currentUser!;
  FirebaseFirestore.instance
      .collection('duenios')
      .doc(duenio.uid)
      .collection("mascotas")
      .doc(duenio.uid)
      .set({
    'Nombre': name,
    'Tamaño': size,
    'Raza': type,
    'Peso': weight,
    'Edad': age,
    'Enfermedades': sick,
    'Genero': gender,
    'Personalidad': mood,
    'Notas': note,
    'ID Mascota': duenio.uid,
  });
}
