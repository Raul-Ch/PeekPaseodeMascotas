import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PaseoduenioprogresoScreen extends StatefulWidget {
  const PaseoduenioprogresoScreen({Key? key}) : super(key: key);

  @override
  State<PaseoduenioprogresoScreen> createState() =>
      _PaseoduenioprogresoScreen();
}

class _PaseoduenioprogresoScreen extends State<PaseoduenioprogresoScreen> {
  var user = FirebaseAuth.instance.currentUser!;
  var uid = FirebaseAuth.instance.currentUser!.uid;

//Citas
  String pet = '';
  String date = '';
  String time = '';
  String duenio = ' ';
  int numstreet = 0;
  String street = '';
  String mun = '';
  String city = '';
  String pname = '';
  String dname = '';
  String pid = '';
  String did = '';
  String id = '';

  String IDcita = '';
  TimeOfDay timenow = TimeOfDay.now();
  String itime = '';
  String obs = '';
  String ftime = '';

  List<Map<String, dynamic>> citasList = [];
  late List<Map<String, dynamic>> items = [];

  String observaciones = '';

//Mascota
  String nombre = ' ';
  String tamanio = '';
  String raza = '';
  double peso = 0.0;
  int edad = 0;
  bool enfermedades = false;
  String sexo = '';
  String personalidad = '';
  String nota = '';

//Paseador
  int tarifa = 0;
  String name = ' ';
  String lastname = '';
  String lastnameone = '';
  int phone = 0;
  String costo = "";
  String duracion = '';

  late var myFuture2 = getCollection();
  late var myFuture3 = mascotas();
  late var myFuture4 = getpaseadores();
  late var Ptarifa = getTarifa();

  Future getCollection() async {
    try {
      user = FirebaseAuth.instance.currentUser!;
      uid = FirebaseAuth.instance.currentUser!.uid;
      //final uid = user.uid;
      await FirebaseFirestore.instance
          .collection('duenios')
          .doc(uid)
          .collection("citas")
          .doc("status")
          .collection("progreso")
          .get()
          .then((snapshot) => snapshot.docs.forEach((element) {
                //print(document.reference.id);
                citasList.add(element.data());
              }));
      setState(() {
        items = citasList;

        IDcita = items[0]["ID"];
        pet = items[0]["Mascota"];
        date = items[0]["Fecha"];
        time = items[0]["Hora"];
        street = items[0]["Calle"];
        numstreet = items[0]["Num Calle"];
        mun = items[0]["Municipio"];
        city = items[0]["Ciudad"];
        pname = items[0]["Paseador"];
        pid = items[0]["PaseadorID"];
        dname = items[0]["Dueño"];
        did = items[0]["DueñoID"];

        itime = items[0]["Inicio"];
        obs = items[0]["Observaciones"];
        ftime = items[0]["Termino"];
        Ptarifa;
        myFuture3;
        myFuture4;
      });

      //return IDcita;
    } catch (error) {
      print(error);
      //return null;
    }
  }

  Future getTarifa() async {
    FirebaseFirestore.instance
        .collection("paseadores")
        .doc(pid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;
        var Tarifa = data?['Tarifa'];
        //var GCorreo = data?['Email'];
        print('Tarifa: ${documentSnapshot.data()}');
        //Set the relevant data to variables as needed
        //print(Nombre1);
        setState(() {
          tarifa = Tarifa;

          //correo = GCorreo;
          //_appBarTitle = Nombre + " " + ApellidoP + " " + ApellidoM;
        });
      } else {
        print("Document does not exist on the database uid:  $did");
      }
    });
  }

  Future getpaseadores() async {
    FirebaseFirestore.instance
        .collection("paseadores")
        .doc(pid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;
        var Nombre = data?['Nombre'];
        var Apellido = data?['Apellido Paterno'];
        var Telefono = data?['Telefono'];
        //var GCorreo = data?['Email'];
        print('Dueño data: ${documentSnapshot.data()}');
        //Set the relevant data to variables as needed
        //print(Nombre1);
        setState(() {
          duenio = Nombre;
          lastname = Apellido;
          phone = Telefono;

          //correo = GCorreo;
          //_appBarTitle = Nombre + " " + ApellidoP + " " + ApellidoM;
        });
      } else {
        print("Document does not exist on the database uid:  $did");
      }
    });
  }

  Future mascotas() async {
    FirebaseFirestore.instance
        .collection("duenios")
        .doc(did)
        .collection("mascotas")
        .doc(did)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;
        var Nombrepet = data?['Nombre'];
        var Tamanio = data?['Tamaño'];
        var Raza = data?['Raza'];
        var Peso = data?['Peso'];
        var Edad = data?['Edad'];
        var Enfermedades = data?['Enfermedades'];
        var Sexo = data?['Genero'];
        var Personalidad = data?['Personalidad'];
        var Nota = data?['Notas'];
        //var GCorreo = data?['Email'];
        print('Document data: ${documentSnapshot.data()}');
        //Set the relevant data to variables as needed
        //print(Nombre1);
        setState(() {
          nombre = Nombrepet;
          tamanio = Tamanio;
          raza = Raza;
          peso = Peso;
          edad = Edad;
          enfermedades = Enfermedades;
          sexo = Sexo;
          personalidad = Personalidad;
          nota = Nota;
          //correo = GCorreo;
          //_appBarTitle = Nombre + " " + ApellidoP + " " + ApellidoM;
        });
      } else {
        print("Document does not exist on the database uid:  $did");
      }
    });
  }

  @override
  void initState() {
    myFuture2;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String durationToString(int minutes) {
    var d = Duration(minutes: minutes);
    List<String> parts = d.toString().split(':');
    return '${parts[0].padLeft(2, '0')}:${parts[1].padLeft(2, '0')}';
  }

  double calculocosto(diffMn) {
    double costo = 0;
    costo = tarifa / 60.00;
    var myDouble = double.parse(diffMn.toString());
    costo = costo * myDouble;
    return costo;
  }

  Future<void> _handleRefresh() async {
    Navigator.popAndPushNamed(context, AppRoutes.paseoduenioprogresoScreen);
/*     showDialog(
        context: context,
        builder: (context) {
          return Center(child: CircularProgressIndicator());
        });
    Navigator.of(context).pop(); */
    return await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    TimeOfDay timenow = TimeOfDay.now();
    String timenow2 =
        '${timenow.hour.toString().padLeft(2, '0')}:${timenow.minute.toString().padLeft(2, '0')}';
    try {
      var format = DateFormat("HH:mm");
      var one = format.parse(timenow2);
      var two = format.parse(itime);
      final diffMn = one.difference(two).inMinutes;
      duracion = durationToString(diffMn);
      costo = calculocosto(diffMn).toString();
    } on Exception {
      costo = "Cargando";
    }
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
        resizeToAvoidBottomInset: false,
        body: LiquidPullToRefresh(
          onRefresh: _handleRefresh,
          color: Colors.black,
          height: 150,
          backgroundColor: Colors.orange,
          animSpeedFactor: 1,
          child: SizedBox(
            width: double.maxFinite,
            height: (MediaQuery.of(context).size.height),
            child: ListView(
              shrinkWrap: true,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBackground,
                      height: (MediaQuery.of(context).size.height),
                      width: (MediaQuery.of(context).size.width),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCanelita,
                            height: getVerticalSize(
                              87,
                            ),
                            width: getHorizontalSize(
                              86,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                43,
                              ),
                            ),
                            alignment: Alignment.center,
                            margin: getMargin(
                              top: 32,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 88,
                              top: 4,
                            ),
                            child: Text(
                              "$pet pasea con:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPaseador,
                            height: getVerticalSize(
                              87,
                            ),
                            width: getHorizontalSize(
                              86,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                43,
                              ),
                            ),
                            alignment: Alignment.center,
                            margin: getMargin(
                              top: 32,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 6,
                            ),
                            child: Text(
                              "Paseador:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 2,
                            ),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Nombre: ",
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            20,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 13,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "$pname $lastname",
                                          style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(
                                              20,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 8,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Teléfono:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 9,
                                  ),
                                  child: Text(
                                    phone.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium20
                                        .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 13,
                              ),
                              child: Text(
                                "CITA:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtArtographieMedium30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 60,
                              top: 15,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Duración:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanMedium18,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                  ),
                                  child: Text(
                                    "$duracion (Horas : Minutos)",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Costo: \$ $costo",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanMedium18,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Fecha: $date",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanMedium18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Inicio: $itime",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanMedium18,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Termino: " "En proceso",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanMedium18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: getPadding(
                                left: 19,
                                top: 0,
                                right: 23,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Text(
                                "Lugar:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold18,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 7,
                              ),
                              child: Text(
                                "$street  $numstreet,",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium18,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 0,
                              ),
                              child: Text(
                                "$mun ,$city",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium18,
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              70,
                            ),
                            width: getHorizontalSize(
                              293,
                            ),
                            margin: getMargin(
                              top: 15,
                              left: 45,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: getVerticalSize(
                                      70,
                                    ),
                                    width: getHorizontalSize(
                                      293,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.lightGreen200,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          21,
                                        ),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: ColorConstant.black9003f,
                                          spreadRadius: getHorizontalSize(
                                            2,
                                          ),
                                          blurRadius: getHorizontalSize(
                                            2,
                                          ),
                                          offset: Offset(
                                            0,
                                            4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: getHorizontalSize(
                                      255,
                                    ),
                                    child: Text(
                                      "Nota:\nEl recorrido aun no acaba por lo que el costo y duración pueden variar",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium16Gray900,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgframe,
                  height: getVerticalSize(
                    32,
                  ),
                  width: getHorizontalSize(
                    375,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
