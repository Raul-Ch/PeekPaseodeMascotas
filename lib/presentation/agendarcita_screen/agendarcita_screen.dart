import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/presentation/vercitasduenio_screen/paseoduenioagendadas_screen.dart';
import 'package:peek_app/widgets/custom_button.dart';

import '../../widgets/custom_text_form_field.dart';

class AgendarcitaScreen extends StatefulWidget {
  String paseadorID;
  String paseador;

  AgendarcitaScreen(
      {Key? key, required this.paseadorID, required this.paseador})
      : super(key: key);
  @override
  State<AgendarcitaScreen> createState() => _AgendarcitaScreen();
}

class _AgendarcitaScreen extends State<AgendarcitaScreen> {
  late String paseadorIDs = widget.paseadorID;
  late String paseadores = widget.paseador;

  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  String date = '';
  String time = '';

  bool _Enable = false;
  bool _Button = true;
  bool _Button2 = false;

  //late var myFuture = Agendarcita2();

//Declaracion de variables relacionadas al uso de Firebase BD
  var user = FirebaseAuth.instance.currentUser!;
  var uid = FirebaseAuth.instance.currentUser!.uid;
  late var numstreetController = TextEditingController();
  late var streetController = TextEditingController();
  late var municipalityController = TextEditingController();
  late var cityController = TextEditingController();

  String dnombre = '';
  int cp = 0;
  int numstreet = 0;
  String street = '';
  String mun = '';
  String city = '';

  @override
  void dispose() {
    dateController.dispose();
    timeController.dispose();
    numstreetController.dispose();
    streetController.dispose();
    municipalityController.dispose();
    cityController.dispose();
    super.dispose();
  }

  Future carga() async {
    user = FirebaseAuth.instance.currentUser!;
    uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance
        .collection('duenios')
        .doc(uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;
        var Nombre = data?['Nombre'];
        var NumCalle = data?['Num Calle'];
        var Calle = data?['Calle'];
        var Municipio = data?['Municipio'];
        var Ciudad = data?['Ciudad'];
        //var GCorreo = data?['Email'];
        print('Document data: ${documentSnapshot.data()}');
        //Set the relevant data to variables as needed
        //print(Nombre1);
        setState(() {
          dnombre = Nombre;
          numstreet = NumCalle;
          street = Calle;
          mun = Municipio;
          city = Ciudad;
          //correo = GCorreo;
          //_appBarTitle = Nombre + " " + ApellidoP + " " + ApellidoM;
        });
      } else {
        print("Document does not exist on the database uid:  " + uid);
      }
    });
  }

  Future Agendarcita() async {
    user = FirebaseAuth.instance.currentUser!;
    uid = FirebaseAuth.instance.currentUser!.uid;
    CollectionReference ref = await FirebaseFirestore.instance
        .collection('duenios')
        .doc(uid)
        .collection("citas")
        .doc("status")
        .collection("agendadas");

    String docId = ref.doc().id;

    await ref.doc(docId).set({
      'ID': docId,
      'DueñoID': uid,
      'Dueño': dnombre,
      'Mascota': nombre,
      'PaseadorID': paseadorIDs,
      'Paseador': paseadores,
      'Fecha': date,
      'Hora': time,
      'Num Calle': numstreet,
      'Calle': street,
      'Municipio': mun,
      'Ciudad': city,
    });

    FirebaseFirestore.instance
        .collection('paseadores')
        .doc(paseadorIDs)
        .collection("citas")
        .doc("status")
        .collection("agendadas")
        .doc(docId)
        .set({
      'ID': docId,
      'DueñoID': uid,
      'Dueño': dnombre,
      'Mascota': nombre,
      'PaseadorID': paseadorIDs,
      'Paseador': paseadores,
      'Fecha': date,
      'Hora': time,
      'Num Calle': numstreet,
      'Calle': street,
      'Municipio': mun,
      'Ciudad': city,
    });
  }

/*   Future Actualizar() async {
    user = FirebaseAuth.instance.currentUser!;
    uid = FirebaseAuth.instance.currentUser!.uid;
    CollectionReference ref = await FirebaseFirestore.instance
        .collection('duenios')
        .doc(uid)
        .collection("citas")
        .doc("status")
        .collection("agendadas");

    String docId = ref.doc().id;

    await ref.doc(docId).update({
      'ID': docId,
      'DueñoID': uid,
      'Dueño': dnombre,
      'Mascota': nombre,
      'PaseadorID': paseadorIDs,
      'Paseador': paseadores,
      'Fecha': date,
      'Hora': time,
      'Num Calle': numstreet,
      'Calle': street,
      'Municipio': mun,
      'Ciudad': city,
    });

    FirebaseFirestore.instance
        .collection('paseadores')
        .doc(paseadorIDs)
        .collection("citas")
        .doc("status")
        .collection("agendadas")
        .doc(docId)
        .update({
      'ID': docId,
      'DueñoID': uid,
      'Dueño': dnombre,
      'Mascota': nombre,
      'PaseadorID': paseadorIDs,
      'Paseador': paseadores,
      'Fecha': date,
      'Hora': time,
      'Num Calle': numstreet,
      'Calle': street,
      'Municipio': mun,
      'Ciudad': city,
    });
  } */
/* 
  Future Agendarcita2() async {
    CollectionReference ref2 = await FirebaseFirestore.instance
        .collection('paseadores')
        .doc(paseadorIDs)
        .collection("citas")
        .doc("status")
        .collection("agendadas");

    String docId2 = ref2.doc().id;

    await ref2.doc(docId2).set({
      'ID': docId2,
      'Fecha': date,
      'Hora': time,
      'Num Calle': numstreet,
      'Calle': street,
      'Municipio': mun,
      'Ciudad': city,
    });
    Agendarcita2();
  } */

  @override
  void initState() {
    // TODO: implement initState
    carga();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(paseadorIDs);
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
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBackground,
                              height: getVerticalSize(
                                720,
                              ),
                              width: getHorizontalSize(
                                375,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 30,
                                    ),
                                    child: Text(
                                      "Agendar CItas",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtArtographieMedium30,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 10,
                                      ),
                                      child: Text(
                                        "Selecciona la fecha del paseo",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanMedium15Bluegray400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: getPadding(
                                          top: 0, left: 100, right: 100),
                                      child: IconButton(
                                        icon: Icon(Icons.edit_calendar),
                                        color:
                                            Color.fromARGB(255, 249, 166, 71),
                                        iconSize: 60,
                                        onPressed: () {
                                          onTapFechaone(context);
                                        },
                                      )),
                                  Padding(
                                    padding: getPadding(
                                      top: 20,
                                    ),
                                    child: Text(
                                      "HorarIo:",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtArtographieMedium30,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 10,
                                      ),
                                      child: Text(
                                        "Selecciona la hora del paseo",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanMedium15Bluegray400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: getPadding(
                                          top: 6, left: 100, right: 100),
                                      child: IconButton(
                                        icon: Icon(Icons.more_time_rounded),
                                        color:
                                            Color.fromARGB(255, 249, 166, 71),
                                        iconSize: 60,
                                        onPressed: () {
                                          openTimePickerDialog(context);
                                        },
                                      )),
                                  Padding(
                                    padding: getPadding(
                                      top: 24,
                                    ),
                                    child: Text(
                                      "CITA:",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtArtographieMedium30,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 23,
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
                                        InkWell(
                                          onTap: () {
                                            onTapFechaone(context);
                                          },
                                          child: CustomTextFormField(
                                            enabled: false,
                                            width: getHorizontalSize(
                                              120,
                                            ),
                                            controller: dateController =
                                                TextEditingController(
                                                    text: date),
                                            hintText: "Fecha",
                                            margin: getMargin(
                                              left: 6,
                                            ),
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
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
                                        InkWell(
                                          onTap: () {
                                            openTimePickerDialog(context);
                                          },
                                          child: CustomTextFormField(
                                            enabled: false,
                                            width: getHorizontalSize(
                                              120,
                                            ),
                                            controller: timeController =
                                                TextEditingController(
                                                    text: time),
                                            hintText: "Tiempo",
                                            margin: getMargin(
                                              left: 12,
                                            ),
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 22,
                                      top: 19,
                                      right: 22,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                        CustomTextFormField(
                                          width: getHorizontalSize(
                                            150,
                                          ),
                                          enabled: _Enable,
                                          controller: streetController =
                                              TextEditingController(
                                                  text: street),
                                          hintText: "Calle",
                                          variant: TextFormFieldVariant
                                              .OutlineIndigo50_1,
                                          padding:
                                              TextFormFieldPadding.PaddingT6,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 10,
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
                                        CustomTextFormField(
                                          width: getHorizontalSize(
                                            75,
                                          ),
                                          enabled: _Enable,
                                          controller: numstreetController =
                                              TextEditingController(
                                                  text: numstreet.toString()),
                                          hintText: "Núm. Calle",
                                          margin: getMargin(
                                            bottom: 1,
                                          ),
                                          padding:
                                              TextFormFieldPadding.PaddingT6,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 22,
                                      top: 18,
                                      right: 22,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                              top: 0, right: 2, bottom: 5),
                                          child: Text(
                                            "Municipio:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium16,
                                          ),
                                        ),
                                        CustomTextFormField(
                                          width: getHorizontalSize(
                                            260,
                                          ),
                                          enabled: _Enable,
                                          controller: municipalityController =
                                              TextEditingController(text: mun),
                                          hintText: "Municipio",
                                          padding:
                                              TextFormFieldPadding.PaddingT6,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 23,
                                      top: 17,
                                      right: 23,
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
                                            "Ciudad:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium16,
                                          ),
                                        ),
                                        CustomTextFormField(
                                          width: getHorizontalSize(
                                            260,
                                          ),
                                          enabled: _Enable,
                                          controller: cityController =
                                              TextEditingController(text: city),
                                          hintText: "Ciudad",
                                          padding:
                                              TextFormFieldPadding.PaddingT6,
                                          textInputAction: TextInputAction.done,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 24,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        /*   Visibility(
                                          visible: _Button,
                                          child: CustomButton(
                                            height: getVerticalSize(
                                              34,
                                            ),
                                            width: getHorizontalSize(
                                              113,
                                            ),
                                            onTap: () {
                                              setState(() {
                                                _Enable = true;
                                                _Button = false;
                                                _Button2 = true;
                                              });
                                            },
                                            text: "Editar",
                                            variant:
                                                ButtonVariant.OutlineBlack9003f,
                                            shape: ButtonShape.RoundedBorder15,
                                            fontStyle: ButtonFontStyle
                                                .UrbanistRomanSemiBold15Gray900,
                                          ),
                                        ), */
                                        /*    Visibility(
                                          visible: _Button2, // bool
                                          child: CustomButton(
                                            height: getVerticalSize(
                                              31,
                                            ),
                                            width: getHorizontalSize(
                                              113,
                                            ),
                                            onTap: _Button
                                                ? null
                                                : () {
                                                    setState(() {
                                                      // Regresamos los valores bool a como estaban antes de presionar el boton editar
                                                      _Enable = false;
                                                      _Button = true;
                                                      _Button2 = false;
                                                      //Actualizar();
                                                    });
                                                  },
                                            text: "Actualizar",
                                            variant: ButtonVariant
                                                .OutlineBlack9003f_2,
                                            shape: ButtonShape.RoundedBorder15,
                                            padding: ButtonPadding.PaddingAll6,
                                            fontStyle: ButtonFontStyle
                                                .UrbanistRomanSemiBold15Gray900,
                                          ),
                                        ), */
                                        Visibility(
                                          visible: _Button,
                                          child: CustomButton(
                                            height: getVerticalSize(
                                              34,
                                            ),
                                            width: getHorizontalSize(
                                              150,
                                            ),
                                            text: "Confirmar",
                                            onTap: () {
                                              Agendarcita();
                                              //popcontext, pushvercitas y un alerta de cita creada correctamente!
                                              Navigator.popUntil(
                                                  context,
                                                  ModalRoute.withName(AppRoutes
                                                      .menuDuenioScreen));
                                              Navigator.pushNamed(
                                                  context,
                                                  AppRoutes
                                                      .vercitasduenioScreen);
                                            },
                                            margin: getMargin(
                                              left: 0,
                                            ),
                                            variant:
                                                ButtonVariant.OutlineOrange,
                                            shape: ButtonShape.RoundedBorder15,
                                            fontStyle: ButtonFontStyle
                                                .UrbanistRomanSemiBold15Gray900,
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
                      ]),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgframe,
                height: getVerticalSize(
                  30,
                ),
                width: getHorizontalSize(
                  375,
                ),
                margin: getMargin(
                  top: 0,
                  bottom: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onTapFechaone(BuildContext context) async {
    DateTime? dateTime = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2025))
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      dateController.text = DateFormat.yMd().format(pickedDate);
      date = dateController.text.trim();
      return null;
    });
  }

  Future<void> openTimePickerDialog(BuildContext context) async {
    TimeOfDay? times = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            initialEntryMode: TimePickerEntryMode.dial)
        .then((selectedTime) {
      if (selectedTime == null) {
        return;
      }
      timeController.text =
          '${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}';
      time = timeController.text.trim();
      return null;
    });
  }
}
