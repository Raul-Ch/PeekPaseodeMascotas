import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

class BuscarpaseadorScreen extends StatefulWidget {
  const BuscarpaseadorScreen({Key? key}) : super(key: key);

  @override
  State<BuscarpaseadorScreen> createState() => _BuscarpaseadorScreen();
}

class _BuscarpaseadorScreen extends State<BuscarpaseadorScreen> {
  final __paseadoresuid = TextEditingController();

  int tarifa = 0;
  String exp = ' ';
  String name = ' ';
  String lastname = '';
  String lastnameone = '';
  String date = '';
  //String gender = '';
  int phone = 0;
  int cp = 0;
  int numstreet = 0;
  String street = '';
  String mun = '';
  String city = '';
  String correo = '';

  //El método Dispose limpia todos los objetos,
  @override
  void dispose() {
    __paseadoresuid.dispose();
    super.dispose();
  }

  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //Lugares en lista de string
  List<Map<String, dynamic>> paseadoresList = [];
  late List<Map<String, dynamic>> items = [];

  late var myFuture = getPaseadores();

//para cada lugar vamos a añadirlo a nuestra lista de lugares para poder hacer display del nombre del lugar en forma de listview
  Future getPaseadores() async {
    //final uid = user.uid;
    await FirebaseFirestore.instance
        .collection('paseadores')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              //print(document.reference.id);
              paseadoresList.add(element.data());
            }));
    setState(() {
      items = paseadoresList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 35,
          elevation: 0,
          flexibleSpace: const Image(
            image: AssetImage('assets/images/frame.png'),
            fit: BoxFit.fill,
          ),
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          //width: double.maxFinite,
          child: FutureBuilder(
            future: myFuture,
            builder: (context, snapshot) {
              return ListView.builder(
                shrinkWrap: true,
                controller: ScrollController(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        title: Row(children: [
                          Text(items[index]["Nombre"]),
                          SizedBox(width: 10),
                          Text("Age 30"),
                        ]),
                      ));
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
