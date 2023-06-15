import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PaseoduenioagendadaScreen extends StatefulWidget {
  String paseadorID;
  String duenioID;
  String citaID;
  PaseoduenioagendadaScreen(
      {Key? key,
      required this.citaID,
      required this.paseadorID,
      required this.duenioID})
      : super(key: key);

  @override
  State<PaseoduenioagendadaScreen> createState() =>
      _PaseoduenioagendadaScreen();
}

class _PaseoduenioagendadaScreen extends State<PaseoduenioagendadaScreen> {
  var user = FirebaseAuth.instance.currentUser!;
  var uid = FirebaseAuth.instance.currentUser!.uid;

  late String paseadorIDs = widget.paseadorID;
  late String duenioIDs = widget.duenioID;
  late String citaIDs = widget.citaID;
  TextEditingController nameController = TextEditingController();
  TextEditingController tarifaController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  bool _Enable = false;
  bool _Button = true;
  bool _Button2 = false;

  int tarifa = 0;
  String name = ' ';
  int phone = 0;

  late var numstreetController = TextEditingController();
  late var streetController = TextEditingController();
  late var municipalityController = TextEditingController();
  late var cityController = TextEditingController();

  String pet = '';
  String date = '';
  String time = '';
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

  Future getPaseador() async {
    //final uid = user.uid;
    await FirebaseFirestore.instance
        .collection("paseadores")
        .doc(paseadorIDs)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;
        var Nombre = data?['Nombre'];
        var Tarifa = data?['Tarifa'];
        var Telefono = data?['Telefono'];

        print('Document data: ${documentSnapshot.data()}');
        //Set the relevant data to variables as needed
        setState(() {
          name = Nombre;
          tarifa = Tarifa;
          phone = Telefono;
        });
      } else {
        print("Document does not exist on the database uid:  $citaIDs");
      }
    });
  }

  Future getCitas() async {
    //final uid = user.uid;
    await FirebaseFirestore.instance
        .collection("duenios")
        .doc(duenioIDs)
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
        });
      } else {
        print("Document does not exist on the database uid:  $citaIDs");
      }
    });
  }

  @override
  void initState() {
    getCitas();
    getPaseador();
    super.initState();
  }

  Future Actualizar() async {
    FirebaseFirestore.instance
        .collection('duenios')
        .doc(duenioIDs)
        .collection("citas")
        .doc("status")
        .collection("agendadas")
        .doc(citaIDs)
        .update({
      'Fecha': date,
      'Hora': time,
      'Num Calle': int.parse(numstreetController.text.trim()),
      'Calle': streetController.text.trim(),
      'Municipio': municipalityController.text.trim(),
      'Ciudad': cityController.text.trim(),
    });

    FirebaseFirestore.instance
        .collection('paseadores')
        .doc(paseadorIDs)
        .collection("citas")
        .doc("status")
        .collection("agendadas")
        .doc(citaIDs)
        .update({
      'Fecha': date,
      'Hora': time,
      'Num Calle': int.parse(numstreetController.text.trim()),
      'Calle': streetController.text.trim(),
      'Municipio': municipalityController.text.trim(),
      'Ciudad': cityController.text.trim(),
    });
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
        resizeToAvoidBottomInset: true,
        body: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(
                  736,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: getVerticalSize(
                          750,
                        ),
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
                                  right: 22,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 20,
                                        right: 22,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 34,
                                              bottom: 27,
                                            ),
                                            child: Text(
                                              "$pet pasea con:",
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
                                              70,
                                            ),
                                            width: getHorizontalSize(
                                              70,
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
                                    Padding(
                                      padding: getPadding(
                                        left: 25,
                                        top: 17,
                                        right: 25,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 34,
                                              bottom: 31,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "Calificación",
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize: getFontSize(
                                                            20,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: ": ",
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize: getFontSize(
                                                            20,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                /* Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar13,
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          1,
                                                        ),
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar23,
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          1,
                                                        ),
                                                      ),
                                                      margin: getMargin(
                                                        left: 3,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar43,
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          1,
                                                        ),
                                                      ),
                                                      margin: getMargin(
                                                        left: 3,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar33,
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          1,
                                                        ),
                                                      ),
                                                      margin: getMargin(
                                                        left: 3,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgPlay,
                                                      height: getVerticalSize(
                                                        16,
                                                      ),
                                                      width: getHorizontalSize(
                                                        15,
                                                      ),
                                                      margin: getMargin(
                                                        left: 3,
                                                        bottom: 1,
                                                      ),
                                                    ),
                                                  ],
                                                ), */
                                              ],
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgPaseador,
                                            height: getVerticalSize(
                                              80,
                                            ),
                                            width: getHorizontalSize(
                                              80,
                                            ),
                                            radius: BorderRadius.circular(
                                              getHorizontalSize(
                                                56,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                        top: 10,
                                        right: 8,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 3,
                                            ),
                                            child: Text(
                                              "Nombre:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              230,
                                            ),
                                            enabled: _Enable,
                                            controller: nameController =
                                                TextEditingController(
                                                    text: name),
                                            hintText: "Nombre",
                                            margin: getMargin(
                                              left: 4,
                                            ),
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
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
                                              bottom: 3,
                                              left: 20,
                                              right: 0,
                                            ),
                                            child: Text(
                                              "Tarifa:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              115,
                                            ),
                                            enabled: _Enable,
                                            controller: tarifaController =
                                                TextEditingController(
                                                    text: tarifa.toString()),
                                            hintText: "Tarifa",
                                            margin: getMargin(
                                              left: 4,
                                            ),
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 17,
                                        right: 8,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                              bottom: 2,
                                            ),
                                            child: Text(
                                              "Teléfono:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(),
                                            child: CustomTextFormField(
                                              width: 240,
                                              enabled: _Enable,
                                              controller:
                                                  phonenumberController =
                                                      TextEditingController(
                                                          text:
                                                              phone.toString()),
                                              hintText: "Teléfono",
                                              margin: getMargin(
                                                left: 5,
                                              ),
                                              padding: TextFormFieldPadding
                                                  .PaddingT6,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 17,
                                      ),
                                      child: Text(
                                        "CITA:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtArtographieMedium30,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 16,
                                            left: 10,
                                            right: 5,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                  left: 7,
                                                ),
                                                child: Text(
                                                  "Fecha:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanMedium16,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  CustomTextFormField(
                                                    enabled: false,
                                                    width: getHorizontalSize(
                                                      100,
                                                    ),
                                                    controller: dateController =
                                                        TextEditingController(
                                                            text: date),
                                                    hintText: "Fecha",
                                                    margin: getMargin(
                                                      left: 6,
                                                    ),
                                                    padding:
                                                        TextFormFieldPadding
                                                            .PaddingT6,
                                                  ),
                                                  Column(children: [
                                                    Visibility(
                                                      visible: _Enable,
                                                      child: IconButton(
                                                          onPressed: () {
                                                            onTapFechaone(
                                                                context);
                                                          },
                                                          icon: const Icon(
                                                              Icons.edit)),
                                                    )
                                                  ]),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 18,
                                            left: 20,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                  left: 0,
                                                ),
                                                child: Text(
                                                  "Hora:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtUrbanistRomanMedium16,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  CustomTextFormField(
                                                    enabled: false,
                                                    width: getHorizontalSize(
                                                      80,
                                                    ),
                                                    controller: timeController =
                                                        TextEditingController(
                                                            text: time),
                                                    hintText: "Tiempo",
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding:
                                                        TextFormFieldPadding
                                                            .PaddingT6,
                                                  ),
                                                  Column(children: [
                                                    Visibility(
                                                      visible: _Enable,
                                                      child: IconButton(
                                                          onPressed: () {
                                                            openTimePickerDialog(
                                                                context);
                                                          },
                                                          icon: const Icon(
                                                              Icons.edit)),
                                                    )
                                                  ]),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                        top: 15,
                                        right: 15,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                              253,
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
                                            margin: getMargin(left: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                        top: 15,
                                        right: 15,
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 0,
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
                                              left: 10,
                                            ),
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                        top: 15,
                                        right: 15,
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
                                              221,
                                            ),
                                            enabled: _Enable,
                                            controller: municipalityController =
                                                TextEditingController(
                                                    text: mun),
                                            hintText: "Municipio",
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                            margin: getMargin(left: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                        top: 17,
                                        right: 15,
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
                                              238,
                                            ),
                                            enabled: _Enable,
                                            controller: cityController =
                                                TextEditingController(
                                                    text: city),
                                            hintText: "Ciudad",
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                            textInputAction:
                                                TextInputAction.done,
                                            margin: getMargin(left: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 18,
                                        top: 17,
                                        right: 18,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Visibility(
                                            visible: _Button,
                                            child: CustomButton(
                                              height: getVerticalSize(
                                                34,
                                              ),
                                              width: getHorizontalSize(
                                                113,
                                              ),
                                              text: "Editar",
                                              onTap: () {
                                                setState(() {
                                                  _Enable = true;
                                                  _Button = false;
                                                  _Button2 = true;
                                                });
                                              },
                                              variant: ButtonVariant
                                                  .OutlineBlack9003f,
                                              shape: ButtonShape.CircleBorder17,
                                              fontStyle: ButtonFontStyle
                                                  .UrbanistRomanSemiBold15Gray900,
                                            ),
                                          ),
                                          Visibility(
                                            visible: _Button2, // bool
                                            child: CustomButton(
                                              height: getVerticalSize(
                                                34,
                                              ),
                                              width: getHorizontalSize(
                                                113,
                                              ),
                                              onTap: _Button
                                                  ? null
                                                  : () {
                                                      setState(() {
                                                        // Regresamos los valores bool a como estaban antes de presionar el boton editar
                                                        Actualizar();
                                                        _Enable = false;
                                                        _Button = true;
                                                        _Button2 = false;
                                                        Navigator.pop(context);
                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        PaseoduenioagendadaScreen(
                                                                          citaID:
                                                                              citaIDs,
                                                                          paseadorID:
                                                                              paseadorIDs,
                                                                          duenioID:
                                                                              duenioIDs,
                                                                        )));
                                                      });
                                                    },
                                              text: "Actualizar",
                                              variant: ButtonVariant
                                                  .OutlineBlack9003f_2,
                                              shape:
                                                  ButtonShape.RoundedBorder15,
                                              padding:
                                                  ButtonPadding.PaddingAll6,
                                              fontStyle: ButtonFontStyle
                                                  .UrbanistRomanSemiBold15Gray900,
                                            ),
                                          ),
                                          Visibility(
                                            visible: _Button,
                                            child: CustomButton(
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
                                          ),
                                        ],
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
        ]),
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
