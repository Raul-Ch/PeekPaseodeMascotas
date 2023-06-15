import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PaseoduenioterminadaScreen extends StatefulWidget {
  String paseadorID;
  String duenioID;
  String citaID;
  PaseoduenioterminadaScreen(
      {Key? key,
      required this.citaID,
      required this.paseadorID,
      required this.duenioID})
      : super(key: key);

  @override
  State<PaseoduenioterminadaScreen> createState() =>
      _PaseoduenioterminadaScreen();
}

class _PaseoduenioterminadaScreen extends State<PaseoduenioterminadaScreen> {
  var user = FirebaseAuth.instance.currentUser!;
  var uid = FirebaseAuth.instance.currentUser!.uid;

  late String paseadorIDs = widget.paseadorID;
  late String duenioIDs = widget.duenioID;
  late String citaIDs = widget.citaID;

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
  String ftime = '';
  String costo = "";
  String duracion = '';
  String IDcita = '';
  TimeOfDay timenow = TimeOfDay.now();
  String itime = '';
  String obs = '';

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

  late var myFuture2 = getCitas();
  late var myFuture3 = getpaseadores();

  Future getCitas() async {
    //final uid = user.uid;
    await FirebaseFirestore.instance
        .collection("duenios")
        .doc(duenioIDs)
        .collection("citas")
        .doc("status")
        .collection("terminadas")
        .doc(citaIDs)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;
        var Mascota = data?['Mascota'];
        var Fecha = data?['Fecha'];
        var Hora = data?['Hora'];
        var Calle = data?['Calle'];
        var NumCalle = data?['Num Calle'];
        var Municipio = data?['Municipio'];
        var Ciudad = data?['Ciudad'];
        var Inicio = data?['Inicio'];
        var Termino = data?['Termino'];
        var Observaciones = data?['Observaciones'];
        var Costo = data?['Costo'];

        print('Document data: ${documentSnapshot.data()}');
        //Set the relevant data to variables as needed
        setState(() {
          pet = Mascota;
          date = Fecha;
          time = Hora;
          street = Calle;
          numstreet = NumCalle;
          mun = Municipio;
          city = Ciudad;
          itime = Inicio;
          ftime = Termino;
          obs = Observaciones;
          costo = Costo;
        });
      } else {
        print("Document does not exist on the database uid:  $citaIDs");
      }
    });
  }

  @override
  void initState() {
    myFuture2;
    myFuture2;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
        resizeToAvoidBottomInset: false,
        body: SizedBox(
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
                            "$pet paseo con:",
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
                                    "H. Agendada: " + time,
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
                                    "Termino: " + ftime,
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
                              top: 10,
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
                                    "Observaciones:\n" + obs,
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
                        Container(
                          height: getVerticalSize(
                            60,
                          ),
                          width: getHorizontalSize(
                            100,
                          ),
                          margin: getMargin(
                            top: 15,
                            left: 140,
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
                                    color: ColorConstant.orangeA200,
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
                                    "Costo:\n" + costo,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtUrbanistRomanBold18,
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
    );
  }
}
