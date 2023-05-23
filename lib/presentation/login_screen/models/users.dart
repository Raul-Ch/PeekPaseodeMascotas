import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

List<String> duenios = [];

Future getDuenios() async {
  final user = FirebaseAuth.instance.currentUser!;
  final uid = FirebaseAuth.instance.currentUser!.uid;
  final uid2 = user.uid;

  await FirebaseFirestore.instance
      .collection('duenios')
      .get()
      .then((snapshot) => snapshot.docs.forEach((document) {
            duenios.add(document.reference.id);
          }));
}

/// Check If Document Exists
Future<bool> checkIfDocExists(String duenio) async {
  try {
    // Get reference to Firestore collection
    var collectionRef = FirebaseFirestore.instance.collection('duenios');
    var doc = await collectionRef.doc(duenio).get();
    return doc.exists;
    print(doc.exists);
  } catch (e) {
    rethrow;
  }
}
