import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PerfilmascotaScreen extends StatefulWidget {
  const PerfilmascotaScreen({Key? key}) : super(key: key);

  @override
  State<PerfilmascotaScreen> createState() => _PerfilmascotaScreen();
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

//Declaracion de variables relacionadas al uso de Firebase BD
var user = FirebaseAuth.instance.currentUser!;
var uid = FirebaseAuth.instance.currentUser!.uid;

class _PerfilmascotaScreen extends State<PerfilmascotaScreen> {
  late var nombreController = TextEditingController();
  //late var tamanioController = TextEditingController();
  late var razaController = TextEditingController();
  late var pesoController = TextEditingController();
  late var edadController = TextEditingController();
  //late var enfermedadesController = TextEditingController();
  late var sexoController = TextEditingController();
  late var personalidadController = TextEditingController();
  // late var notasController = TextEditingController();
  List<String> tamanios = ['Pequeño', 'Mediano', 'Grande'];
  String? selectedtamanio = 'Pequeño';

  List<String> enf = ['Si', 'No'];
  String? selectedenf = 'No';

// Variables del codigo
  String nombre = ' ';
  String tamanio = '';
  String raza = '';
  double peso = 0.0;
  int edad = 0;
  bool enfermedades = false;
  String sexo = '';
  String personalidad = '';
//  String notas = '';

  bool _Enable = false;
  bool _Button = true;
  bool _Button2 = false;

  @override
  void dispose() {
    nombreController.dispose();
    //tamanioController.dispose();
    razaController.dispose();
    pesoController.dispose();
    edadController.dispose();
    // enfermedadesController.dispose();
    sexoController.dispose();
    personalidadController.dispose();
    //notasController.dispose();
    super.dispose();
  }

//Nuestro metodo futuro a utilizar encargado de actualizar la BD con los controladores de texto recogidos
//REGISTRO
  Future Actualizar() async {
    user = FirebaseAuth.instance.currentUser!;
    uid = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("duenios")
        .doc(uid)
        .collection("mascotas")
        .doc(uid)
        .update({
      'Nombre': nombreController.text.trim(),
      'Tamaño': tamanio,
      'Raza': razaController.text.trim(),
      'Peso': double.parse(pesoController.text.trim()),
      'Edad': int.parse(edadController.text.trim()),
      'Enfermedades': enfermedades,
      'Genero': sexoController.text.trim(),
      'Personalidad': personalidadController.text.trim(),
    });
  }

//Esta función no solo nos mostrara el nombre del usuario en la APPBAR tambien sera la encargada de cargar los datos de nuestra BD actual a variables utilizadas en los TextField
  Future mascotas() async {
    user = FirebaseAuth.instance.currentUser!;
    uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance
        .collection("duenios")
        .doc(uid)
        .collection("mascotas")
        .doc(uid)
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
          //correo = GCorreo;
          //_appBarTitle = Nombre + " " + ApellidoP + " " + ApellidoM;
        });
      } else {
        print("Document does not exist on the database uid:  " + uid);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    mascotas();
    super.initState();
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
        drawer: Drawer(
            child: Container(
          color: const Color.fromARGB(255, 30, 35, 44),
          child: ListView(
            controller: ScrollController(),
            children: [
              DrawerHeader(
                  child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.imgPeek4,
                ),
              )),
              const SizedBox(
                //Use of SizedBox
                height: 10,
              ),
              //Home
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 45),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgCasa,
                ),
                title: Text(
                  '  Menu Principal',
                  style: AppStyle.txtUrbanistRomanBold20Indigo50,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, AppRoutes.menuDuenioScreen);
                },
              ),
              const SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              //Perfil
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 48),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgUsuario,
                ),
                title: Text(
                  '   Perfil',
                  style: AppStyle.txtUrbanistRomanBold20Indigo50,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, AppRoutes.perfilduenioScreen);
                },
              ),
              const SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              //Mascota
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 45),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgHuellita,
                ),
                title: Text(
                  ' Mascota',
                  style: AppStyle.txtUrbanistRomanBold20Indigo50,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, AppRoutes.perfilmascotaScreen);
                },
              ),
              const SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              //Paseos
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 45),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgPerro,
                ),
                title: Text(
                  '  Paseos',
                  style: AppStyle.txtUrbanistRomanBold20Indigo50,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(
                      context, AppRoutes.paseosmenuduenioScreen);
                },
              ),
              const SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              //Comentarios
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgMaskgroup,
                ),
                title: Text(
                  ' Comentarios',
                  style: AppStyle.txtUrbanistRomanBold20Indigo50,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, AppRoutes.comentariosScreen);
                },
              ),
              const SizedBox(
                //Use of SizedBox
                height: 100,
              ),
              //Mascota
              ListTile(
                contentPadding: const EdgeInsets.only(left: 120),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgMaskgroup39x39,
                ),
                title: Text(
                  'Cerrar Sesión',
                  style: AppStyle.txtUrbanistRomanBold25Lightgreen20001,
                ),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.popUntil(
                      context, ModalRoute.withName(AppRoutes.welcomeScreen));
                },
              )
            ],
          ),
        )),
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgBackground,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 130.0),
                      //Spacer(),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: getPadding(
                            left: 13,
                            top: 0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                onTap: () {
                                  onTapBtnArrowleft(context);
                                },
                                height: 41,
                                width: 41,
                                margin: getMargin(
                                  top: 2,
                                  bottom: 111,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  154,
                                ),
                                width: getHorizontalSize(
                                  127,
                                ),
                                margin: getMargin(
                                  left: 66,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "¡Canela!",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanBold35,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCanelita,
                                      height: getVerticalSize(
                                        112,
                                      ),
                                      width: getHorizontalSize(
                                        107,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          56,
                                        ),
                                      ),
                                      alignment: Alignment.bottomRight,
                                      margin: getMargin(
                                        right: 3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 34,
                          top: 30,
                          right: 26,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                230,
                              ),
                              enabled: _Enable,
                              hintText: "Nombre",
                              //focusNode: FocusNode(),
                              controller: nombreController =
                                  TextEditingController(text: nombre),

                              padding: TextFormFieldPadding.PaddingT6,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 34,
                          top: 15,
                          right: 26,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 3,
                              ),
                              child: Text(
                                "Tamaño:    ",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            SizedBox(
                              width: 225,
                              height: 40,
                              child: CustomButton(
                                height: getVerticalSize(
                                  35,
                                ),
                                width: getHorizontalSize(
                                  200,
                                ),
                                onTap: _Enable
                                    ? () {
                                        Selecttamanio(context);
                                      }
                                    : null,
                                text: tamanio.toString(),
                                variant: ButtonVariant.OutlineBlack9003f_2,
                                shape: ButtonShape.RoundedBorder15,
                                padding: ButtonPadding.PaddingAll6,
                                fontStyle: ButtonFontStyle
                                    .UrbanistRomanSemiBold15Gray900,
                              ),

/*                               child: DropdownButtonFormField<String>(
                                hint: Text(tamanio),
                                //disabledHint: Text(tamanio),
                                dropdownColor:
                                    Color.fromARGB(255, 214, 223, 151),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey))),
                                value: selectedtamanio,
                                items: tamanios
                                    .map((item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(item),
                                        ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    selectedtamanio = value;
                                  });
                                },
                                onSaved: (value) {
                                  setState(() {
                                    selectedtamanio = value;
                                  });
                                },
                                /*                                 focusNode: FocusNode(),
                                  controller: tamanioController,
                                  hintText: "Tamaño",
                                  margin: getMargin(
                                    left: 10,
                                  ), */
                                //padding: TextFormFieldPadding.PaddingT6,
                              ), */
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 34,
                          top: 15,
                          right: 26,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 3,
                              ),
                              child: Text(
                                "Raza:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Expanded(
                              child: CustomTextFormField(
                                enabled: _Enable,
                                //focusNode: FocusNode(),
                                controller: razaController =
                                    TextEditingController(text: raza),
                                hintText: "Raza",
                                margin: getMargin(
                                  left: 13,
                                ),
                                padding: TextFormFieldPadding.PaddingT6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 34,
                          top: 18,
                          right: 26,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "Peso:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20,
                                ),
                              ),
                              CustomTextFormField(
                                width: getHorizontalSize(
                                  100,
                                ),
                                enabled: _Enable,
                                //focusNode: FocusNode(),
                                controller: pesoController =
                                    TextEditingController(
                                        text: peso.toString()),
                                hintText: "Peso",
                                padding: TextFormFieldPadding.PaddingT6,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 18,
                                  top: 1,
                                  bottom: 4,
                                ),
                                child: Text(
                                  "Edad:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20,
                                ),
                              ),
                              CustomTextFormField(
                                width: getHorizontalSize(
                                  100,
                                ),
                                enabled: _Enable,
                                //focusNode: FocusNode(),
                                controller: edadController =
                                    TextEditingController(
                                        text: edad.toString()),

                                padding: TextFormFieldPadding.PaddingT6,
                              ),
                            ]),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 35,
                          top: 15,
                          right: 26,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 3,
                              ),
                              child: Text(
                                "Enfermedades:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              height: 38,
                              child: CustomButton(
                                height: getVerticalSize(
                                  35,
                                ),
                                width: getHorizontalSize(
                                  200,
                                ),
                                onTap: _Enable
                                    ? () {
                                        Selectenf(context);
                                      }
                                    : null,
                                text: enfermedades.toString(),
                                variant: ButtonVariant.OutlineBlack9003f_2,
                                shape: ButtonShape.RoundedBorder15,
                                padding: ButtonPadding.PaddingAll6,
                                fontStyle: ButtonFontStyle
                                    .UrbanistRomanSemiBold15Gray900,
                              ),
/*                               child: DropdownButtonFormField<String>(
                                //disabledHint: Text(enfermedades.toString()),
                                enableFeedback: _Enable,
                                dropdownColor:
                                    Color.fromARGB(255, 214, 223, 151),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey))),
                                value: selectedenf,
                                items: enf
                                    .map((item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(item),
                                        ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    selectedenf = value;
                                  });
                                },
                                onSaved: (value) {
                                  setState(() {
                                    selectedenf = value;
                                  });
                                },
                                /*                                 focusNode: FocusNode(),
                                  controller: tamanioController,
                                  hintText: "Tamaño",
                                  margin: getMargin(
                                    left: 10,
                                  ), */
                                //padding: TextFormFieldPadding.PaddingT6,
                              ), */
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 2,
                                bottom: 3,
                              ),
                              child: Text(
                                "Sexo:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                50,
                              ),
                              enabled: _Enable,
                              hintText: "F/M",
                              //focusNode: FocusNode(),
                              controller: sexoController =
                                  TextEditingController(text: sexo),

                              padding: TextFormFieldPadding.PaddingT6,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 32,
                          top: 15,
                          right: 28,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 3,
                              ),
                              child: Text(
                                "Personalidad:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                175,
                              ),
                              enabled: _Enable,
                              //focusNode: FocusNode(),
                              controller: personalidadController =
                                  TextEditingController(text: personalidad),
                              hintText: "Personalidad",
                              margin: getMargin(
                                left: 18,
                              ),
                              padding: TextFormFieldPadding.PaddingT6,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 32,
                            top: 5,
                            right: 50,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Visibility(
                                visible: _Button, // bool
                                child: CustomButton(
                                  height: getVerticalSize(
                                    31,
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
                                  variant: ButtonVariant.OutlineBlack9003f_2,
                                  shape: ButtonShape.RoundedBorder15,
                                  padding: ButtonPadding.PaddingAll6,
                                  fontStyle: ButtonFontStyle
                                      .UrbanistRomanSemiBold15Gray900,
                                ),
                              ),
                              Visibility(
                                visible: _Button2,
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
                                          Actualizar();
                                          setState(() {
                                            // Regresamos los valores bool a como estaban antes de presionar el boton editar
                                            _Enable = false;
                                            _Button = true;
                                            //appBarTittle();
                                            Navigator.pop(context);
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        PerfilmascotaScreen()));
                                          });
                                        },
                                  text: "Actualizar",
                                  variant: ButtonVariant.OutlineBlack9003f_2,
                                  shape: ButtonShape.RoundedBorder15,
                                  padding: ButtonPadding.PaddingAll6,
                                  fontStyle: ButtonFontStyle
                                      .UrbanistRomanSemiBold15Gray900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: getVerticalSize(52),
                          width: getHorizontalSize(
                            300,
                          ),
                          child: Text(
                            "Nota: Tamaño y enfermedades se actualizaran una vez que se guarden los cambios",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtUrbanistRomanBold16,
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
                        margin: getMargin(
                          top: 5.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: getMargin(
                    left: 0,
                    top: 0,
                    bottom: 624,
                  ),
                  padding: getPadding(
                    left: 18,
                    right: 18,
                  ),
                  decoration: AppDecoration.fillLightgreen20002,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPeek299x96,
                        height: getVerticalSize(
                          100,
                        ),
                        width: getHorizontalSize(
                          98,
                        ),
                        margin: getMargin(
                          top: 12,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          right: 1,
                          bottom: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                207,
                              ),
                              decoration: AppDecoration.txtOutlineBlack90066,
                              child: Text(
                                "Peek ",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtArtographieMedium25,
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 5,
                              ),
                              decoration: AppDecoration.txtOutlineBlack90066,
                              child: Text(
                                " Paseo de Mascotas",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtArtographieMedium25,
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
    );
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  Selecttamanio(BuildContext context) {
    // set up the button
    Widget smallButton = TextButton(
      onPressed: () {
        tamanio = "Pequeña";
        Navigator.pop(context);
      },
      child: const Text("Pequeña"),
    );

    // set up the button
    Widget mediumButton = TextButton(
      onPressed: () {
        tamanio = "Mediana";
        Navigator.pop(context);
      },
      child: const Text("Mediana"),
    );

    Widget bigButton = TextButton(
      onPressed: () {
        tamanio = "Grande";
        Navigator.pop(context);
      },
      child: const Text("Grande"),
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Tamaño"),
      content: const Text(
          textAlign: TextAlign.left, "Selecciona el tamaño de tu Perro"),
      actions: [smallButton, mediumButton, bigButton],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Selectenf(BuildContext context) {
    // set up the button
    Widget yesButton = TextButton(
      onPressed: () {
        enfermedades = true;
        Navigator.pop(context);
      },
      child: const Text("Si"),
    );

    Widget noButton = TextButton(
      onPressed: () {
        enfermedades = false;
        Navigator.pop(context);
      },
      child: const Text("No"),
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Enfermedades"),
      content: const Text(
          textAlign: TextAlign.left,
          "Selecciona si tu Perro tiene enfermedades o alergias"),
      actions: [yesButton, noButton],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
