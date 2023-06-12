import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/presentation/vercitaspaseador_screen/paseopaseadoragendadas_screen.dart';
import 'package:peek_app/widgets/custom_button.dart';

class PaseopaseadoragendadaScreen extends StatefulWidget {
  String paseadorID;
  String duenioID;
  String citaID;
  PaseopaseadoragendadaScreen(
      {Key? key,
      required this.citaID,
      required this.paseadorID,
      required this.duenioID})
      : super(key: key);

  @override
  State<PaseopaseadoragendadaScreen> createState() =>
      _PaseopaseadoragendadaScreen();
}

class _PaseopaseadoragendadaScreen extends State<PaseopaseadoragendadaScreen> {
  var user = FirebaseAuth.instance.currentUser!;
  var uid = FirebaseAuth.instance.currentUser!.uid;

  late String paseadorIDs = widget.paseadorID;
  late String duenioIDs = widget.duenioID;
  late String citaIDs = widget.citaID;

  bool _Enable = false;
  bool _Button = true;
  bool _Button2 = false;

  bool activo = true;

  String pname = '';

  String pet = '';
  String date = '';
  String time = '';
  String duenio = ' ';
  int numstreet = 0;
  String street = '';
  String mun = '';
  String city = '';

  String nombre = ' ';
  String tamanio = '';
  String raza = '';
  double peso = 0.0;
  int edad = 0;
  bool enfermedades = false;
  String sexo = '';
  String personalidad = '';
  String nota = '';

  bool paseando = false;

  Future ispaseando() async {
    FirebaseFirestore.instance
        .collection("paseadores")
        .doc(paseadorIDs)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;
        var Paseando = data?['Activo'];
        setState(() {
          paseando = Paseando;
          print(paseando);
        });
      } else {
        print("Document does not exist on the database uid:  " + duenioIDs);
      }
    });
  }

  Future getduenios() async {
    FirebaseFirestore.instance
        .collection("duenios")
        .doc(duenioIDs)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;
        var Nombre = data?['Nombre'];
        var Apellido = data?['Apellido Paterno'];
        var Telefono = data?['Telefono'];
        //var GCorreo = data?['Email'];
        print('Document data: ${documentSnapshot.data()}');
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
        print("Document does not exist on the database uid:  " + duenioIDs);
      }
    });
  }

  Future mascotas() async {
    FirebaseFirestore.instance
        .collection("duenios")
        .doc(duenioIDs)
        .collection("mascotas")
        .doc(duenioIDs)
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
        print("Document does not exist on the database uid:  " + duenioIDs);
      }
    });
  }

  Future getCitas() async {
    //final uid = user.uid;
    await FirebaseFirestore.instance
        .collection("paseadores")
        .doc(paseadorIDs)
        .collection("citas")
        .doc("status")
        .collection("agendadas")
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
        var Paseador = data?['Paseador'];
        //var PaseadorID = data?['PaseadorID'];
        //var Duenio = data?['Dueño'];
        //var DuenioID = data?['DueñoID'];
        //    var ID = data?['ID'];

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
          pname = Paseador;
        });
      } else {
        print("Document does not exist on the database uid:  " + citaIDs);
      }
    });
  }

  void initState() {
    getCitas();
    mascotas();
    getduenios();
    ispaseando();
    super.initState();
  }

  Future<void> deleteCita() async {
    FirebaseFirestore.instance
        .collection('duenios')
        .doc(duenioIDs)
        .collection("citas")
        .doc("status")
        .collection("agendadas")
        .doc(citaIDs)
        .delete();

    FirebaseFirestore.instance
        .collection('paseadores')
        .doc(paseadorIDs)
        .collection("citas")
        .doc("status")
        .collection("agendadas")
        .doc(citaIDs)
        .delete();
  }

  Future<void> copycita(TimeOfDay now) async {
    user = FirebaseAuth.instance.currentUser!;
    uid = FirebaseAuth.instance.currentUser!.uid;
    String timenow;
    timenow =
        '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
    CollectionReference ref = await FirebaseFirestore.instance
        .collection('paseadores')
        .doc(uid)
        .collection("citas")
        .doc("status")
        .collection("progreso");

    String docId = ref.doc().id;

    await ref.doc(docId).set({
      'ID': docId,
      'DueñoID': duenioIDs,
      'Dueño': duenio,
      'Mascota': pet,
      'PaseadorID': paseadorIDs,
      'Paseador': pname,
      'Fecha': date,
      'Hora': time,
      'Num Calle': numstreet,
      'Calle': street,
      'Municipio': mun,
      'Ciudad': city,
      'Inicio': timenow,
      'Termino': " ",
      'Observaciones': " ",
    });

    FirebaseFirestore.instance
        .collection('duenios')
        .doc(duenioIDs)
        .collection("citas")
        .doc("status")
        .collection("progreso")
        .doc(docId)
        .set({
      'ID': docId,
      'DueñoID': duenioIDs,
      'Dueño': duenio,
      'Mascota': pet,
      'PaseadorID': paseadorIDs,
      'Paseador': pname,
      'Fecha': date,
      'Hora': time,
      'Num Calle': numstreet,
      'Calle': street,
      'Municipio': mun,
      'Ciudad': city,
      'Inicio': timenow,
      'Termino': " ",
      'Observaciones': " ",
    });
    deleteCita();
  }

  @override
  Widget build(BuildContext context) {
    TimeOfDay now = TimeOfDay.now();
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
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  734,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: (MediaQuery.of(context).size.height),
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBackground,
                              height: getVerticalSize(
                                750,
                              ),
                              width: getHorizontalSize(
                                375,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 21,
                                  top: 35,
                                  right: 22,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 22,
                                          right: 22,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 32,
                                                bottom: 29,
                                              ),
                                              child: Text(
                                                "Paseas con: " + nombre,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold20,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgCanelita,
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
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 29,
                                        right: 20,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                            ),
                                            child: Text(
                                              "Enfermedades / Alergias:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 12,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              enfermedades.toString(),
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium20
                                                  .copyWith(
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 2,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "Personalidad:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistRomanBold20,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 12,
                                            top: 2,
                                          ),
                                          child: Text(
                                            personalidad,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium20
                                                .copyWith(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        right: 7,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              bottom: 34,
                                            ),
                                            child: Text(
                                              "Notas:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: getHorizontalSize(
                                                259,
                                              ),
                                              margin: getMargin(
                                                left: 7,
                                              ),
                                              child: Text(
                                                nota,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanMedium20
                                                    .copyWith(
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 6,
                                      ),
                                      child: Text(
                                        "Dueño:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanBold20,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
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
                                                    color:
                                                        ColorConstant.gray900,
                                                    fontSize: getFontSize(
                                                      20,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: duenio,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
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
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 8,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Teléfono:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistRomanBold20,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 9,
                                            ),
                                            child: Text(
                                              phone.toString(),
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium20
                                                  .copyWith(
                                                decoration:
                                                    TextDecoration.underline,
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
                                          top: 26,
                                        ),
                                        child: Text(
                                          "CITA:",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtArtographieMedium30,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 20,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Text(
                                                "Fecha:",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanMedium16,
                                              ),
                                            ),
                                            Container(
                                              width: getHorizontalSize(
                                                131,
                                              ),
                                              margin: getMargin(
                                                left: 12,
                                              ),
                                              padding: getPadding(
                                                left: 30,
                                                top: 1,
                                                right: 57,
                                                bottom: 1,
                                              ),
                                              decoration: AppDecoration
                                                  .txtOutlineIndigo50
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder8,
                                              ),
                                              child: Text(
                                                "10",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanMedium15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 18,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Text(
                                                "Hora:",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanMedium16,
                                              ),
                                            ),
                                            Container(
                                              width: getHorizontalSize(
                                                126,
                                              ),
                                              margin: getMargin(
                                                left: 21,
                                              ),
                                              padding: getPadding(
                                                left: 30,
                                                top: 1,
                                                right: 52,
                                                bottom: 1,
                                              ),
                                              decoration: AppDecoration
                                                  .txtOutlineIndigo50
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder8,
                                              ),
                                              child: Text(
                                                "06",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanMedium15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        top: 19,
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Calle:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium16,
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              125,
                                            ),
                                            margin: getMargin(
                                              left: 11,
                                            ),
                                            padding: getPadding(
                                              left: 30,
                                              top: 1,
                                              right: 37,
                                              bottom: 1,
                                            ),
                                            decoration: AppDecoration
                                                .txtOutlineIndigo50
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtRoundedBorder8,
                                            ),
                                            child: Text(
                                              "Álamo",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium15,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 25,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Número:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium16,
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              54,
                                            ),
                                            margin: getMargin(
                                              left: 17,
                                            ),
                                            padding: getPadding(
                                              left: 14,
                                              top: 1,
                                              right: 14,
                                              bottom: 1,
                                            ),
                                            decoration: AppDecoration
                                                .txtOutlineIndigo50
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtRoundedBorder8,
                                            ),
                                            child: Text(
                                              "212",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 18,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                            ),
                                            child: Text(
                                              "Municipio:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium16,
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              22,
                                            ),
                                            width: getHorizontalSize(
                                              248,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      22,
                                                    ),
                                                    width: getHorizontalSize(
                                                      248,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          ColorConstant.gray50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          8,
                                                        ),
                                                      ),
                                                      border: Border.all(
                                                        color: ColorConstant
                                                            .indigo50,
                                                        width:
                                                            getHorizontalSize(
                                                          1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    "Naucalpan de Juarez",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistRomanMedium15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        top: 17,
                                        right: 1,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Colonia:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium16,
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              248,
                                            ),
                                            padding: getPadding(
                                              left: 30,
                                              top: 1,
                                              right: 82,
                                              bottom: 1,
                                            ),
                                            decoration: AppDecoration
                                                .txtOutlineIndigo50
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtRoundedBorder8,
                                            ),
                                            child: Text(
                                              "Santa Cruz",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 18,
                                          top: 27,
                                          right: 18,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomButton(
                                              height: getVerticalSize(
                                                34,
                                              ),
                                              width: getHorizontalSize(
                                                113,
                                              ),
                                              onTap: () {
                                                if (paseando == false) {
                                                  iniciar(context, now);
                                                } else {
                                                  noiniciar(context);
                                                }
                                              },
                                              text: "Iniciar",
                                              variant: ButtonVariant
                                                  .OutlineBlack9003f_3,
                                              shape: ButtonShape.CircleBorder17,
                                            ),
                                            CustomButton(
                                              height: getVerticalSize(
                                                34,
                                              ),
                                              width: getHorizontalSize(
                                                120,
                                              ),
                                              text: "Cancelar Cita",
                                              onTap: () {
                                                seguro(context);
                                              },
                                              variant:
                                                  ButtonVariant.OutlineOrange,
                                              shape: ButtonShape.CircleBorder17,
                                              fontStyle: ButtonFontStyle
                                                  .UrbanistRomanSemiBold15Gray900,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgframe,
                      height: getVerticalSize(
                        32,
                      ),
                      width: getHorizontalSize(
                        375,
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  noiniciar(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      onPressed: () {
        //Funcion
        Navigator.pop(context);
        ispaseando();
        //Navigator.pushNamed(context, AppRoutes.paseoduenioagendadasScreen);
      },
      child: const Text("Ok"),
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Ya tienes un paseo activo"),
      content: const Text(
          textAlign: TextAlign.center,
          "Tenemos registrado que tienes un paseo activo, termina este para poder inciar con uno nuevo"),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  iniciar(BuildContext context, TimeOfDay now) {
    // set up the button
    Widget okButton = TextButton(
      onPressed: () {
        //Funcion
        print(now);
        FirebaseFirestore.instance
            .collection('paseadores')
            .doc(paseadorIDs)
            .update({
          'Activo': true,
        });
        copycita(now);
        Navigator.pop(context);
        ispaseando();
//        Navigator.popUntil(
        //          context, ModalRoute.withName(AppRoutes.vercitaspaseadorScreen));
        //Navigator.pushNamed(context, AppRoutes.paseoduenioagendadasScreen);
      },
      child: const Text("Iniciar"),
    );

    // set up the button
    Widget NopeButton = TextButton(
      child: const Text("Cancelar"),
      onPressed: () {
        Navigator.pop(context);
        ispaseando();
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Iniciar paseo"),
      content: const Text(
          textAlign: TextAlign.left,
          "Estas por iniciar con tu paseo ¿Esta todo listo?"),
      actions: [
        okButton,
        NopeButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  seguro(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      onPressed: () {
        deleteCita();
        Navigator.popUntil(
            context, ModalRoute.withName(AppRoutes.vercitasduenioScreen));
        Navigator.pushNamed(context, AppRoutes.paseoduenioagendadasScreen);
      },
      child: const Text("OK"),
    );

    // set up the button
    Widget NopeButton = TextButton(
      child: const Text("Cancelar"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Eliminar esta cita"),
      content: const Text(
          textAlign: TextAlign.left,
          "Estas por cancelar y eliminar esta cita, ¿Estas seguro?"),
      actions: [
        okButton,
        NopeButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
