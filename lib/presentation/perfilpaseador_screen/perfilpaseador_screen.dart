import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PerfilpaseadorScreen extends StatefulWidget {
  const PerfilpaseadorScreen({Key? key}) : super(key: key);

  @override
  State<PerfilpaseadorScreen> createState() => _PerfilpaseadorScreen();
}

//Declaracion de variables relacionadas al uso de Firebase BD
var user = FirebaseAuth.instance.currentUser!;
var uid = FirebaseAuth.instance.currentUser!.uid;

//Esta clase deshabilitara los TextFields utilizados
class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class _PerfilpaseadorScreen extends State<PerfilpaseadorScreen> {
  TextEditingController tarifaController = TextEditingController();
  TextEditingController expController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController lastnameoneController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController postalcodeController = TextEditingController();
  TextEditingController numstreetController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController municipalityController = TextEditingController();
  TextEditingController cityController = TextEditingController();

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

  bool _Enable = false;
  bool _Button = true;
  bool _Button2 = false;

  @override
  void dispose() {
    tarifaController.dispose();
    expController.dispose();
    nameController.dispose();
    lastnameController.dispose();
    lastnameoneController.dispose();
    dateController.dispose();
    //genderController.dispose();
    phonenumberController.dispose();
    postalcodeController.dispose();
    numstreetController.dispose();
    streetController.dispose();
    municipalityController.dispose();
    cityController.dispose();
    super.dispose();
  }

  Future Actualizar() async {
    user = FirebaseAuth.instance.currentUser!;
    uid = FirebaseAuth.instance.currentUser!.uid;
    //crear usuario
    await FirebaseFirestore.instance.collection("paseadores").doc(uid).update({
      'Tarifa': int.parse(tarifaController.text.trim()),
      'Experiencia': expController.text.trim(),
      'Nombre': nameController.text.trim(),
      'Apellido Paterno': lastnameController.text.trim(),
      'Apellido Materno': lastnameoneController.text.trim(),
      'Cumpleaños': dateController.text.trim(),
      'Telefono': int.parse(phonenumberController.text.trim()),
      'CP': int.parse(postalcodeController.text.trim()),
      'Num Calle': int.parse(numstreetController.text.trim()),
      'Calle': streetController.text.trim(),
      'Municipio': municipalityController.text.trim(),
      'Ciudad': cityController.text.trim(),
    });
  }

  Future appBarTittle() async {
    user = FirebaseAuth.instance.currentUser!;
    uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance
        .collection('paseadores')
        .doc(uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;
        var Tarifa = data?['Tarifa'];
        var Experiencia = data?['Experiencia'];
        var Nombre = data?['Nombre'];
        var ApellidoP = data?['Apellido Paterno'];
        var ApellidoM = data?['Apellido Materno'];
        var Edad = data?['Cumpleaños'];
        var Telefono = data?['Telefono'];
        var CP = data?['CP'];
        var NumCalle = data?['Num Calle'];
        var Calle = data?['Calle'];
        var Municipio = data?['Municipio'];
        var Ciudad = data?['Ciudad'];
        //var GCorreo = data?['Email'];
        print('Document data: ${documentSnapshot.data()}');
        //Set the relevant data to variables as needed
        //print(Nombre1);
        setState(() {
          tarifa = Tarifa;
          exp = Experiencia;
          name = Nombre;
          lastname = ApellidoP;
          lastnameone = ApellidoM;
          date = Edad;
          phone = Telefono;
          cp = CP;
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

  @override
  void initState() {
    // TODO: implement initState
    appBarTittle();
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
                  Navigator.pushNamed(context, AppRoutes.menuPaseadorScreen);
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
                  Navigator.pushNamed(context, AppRoutes.perfilpaseadorScreen);
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
                      context, AppRoutes.paseosmenupaseadorScreen);
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
                height: 130,
              ),
              //Mascota
              ListTile(
                contentPadding: const EdgeInsets.only(left: 120),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgMaskgroup39x39,
                ),
                title: Text('Cerrar Sesión',
                    style: AppStyle.txtUrbanistRomanBold25Lightgreen20001),
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
        resizeToAvoidBottomInset: true,
        body: Container(
          height: (MediaQuery.of(context).size.height),
          width: double.maxFinite,
          child: ListView(shrinkWrap: true, children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: (MediaQuery.of(context).size.height),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgBackground,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      height: (MediaQuery.of(context).size.height),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 30,
                              top: 58,
                              right: 27,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 0,
                                    bottom: 30,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "¡Tú!",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtArtographieMedium40,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgPaseador,
                                        height: getVerticalSize(
                                          128,
                                        ),
                                        width: getHorizontalSize(
                                          122,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            64,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 12,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: getVerticalSize(
                                          42,
                                        ),
                                        width: getHorizontalSize(
                                          109,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: RichText(
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
                                                        fontFamily: 'Urbanist',
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
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 8,
                                                ),
                                                /*         child: Row(
                                                  children: [
                                                    CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar1,
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16,
                                                      ),
                                                      radius: BorderRadius.circular(
                                                        getHorizontalSize(
                                                          1,
                                                        ),
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar2,
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16,
                                                      ),
                                                      radius: BorderRadius.circular(
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
                                                          ImageConstant.imgStar4,
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16,
                                                      ),
                                                      radius: BorderRadius.circular(
                                                        getHorizontalSize(
                                                          1,
                                                        ),
                                                      ),
                                                      margin: getMargin(
                                                        left: 3,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        27,
                                                      ),
                                                      margin: getMargin(
                                                        left: 3,
                                                      ),
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.centerLeft,
                                                        children: [
                                                          CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgPlay,
                                                            height: getVerticalSize(
                                                              16,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              15,
                                                            ),
                                                            alignment:
                                                                Alignment.topRight,
                                                          ),
                                                          CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgStar3,
                                                            height: getVerticalSize(
                                                              18,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              16,
                                                            ),
                                                            radius: BorderRadius
                                                                .circular(
                                                              getHorizontalSize(
                                                                1,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerLeft,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ), */
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 11,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                  bottom: 3,
                                                ),
                                                child: Text(
                                                  "Tarifa:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanBold20,
                                                ),
                                              ),
                                              CustomTextFormField(
                                                width: getHorizontalSize(
                                                  110,
                                                ),
                                                enabled: _Enable,
                                                controller: tarifaController =
                                                    TextEditingController(
                                                        text:
                                                            tarifa.toString()),
                                                hintText: "Tarifa",
                                                margin: getMargin(
                                                  left: 4,
                                                ),
                                                padding: TextFormFieldPadding
                                                    .PaddingT6,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 8,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 39,
                                                bottom: 31,
                                              ),
                                              child: Text(
                                                "Exp:",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold20,
                                              ),
                                            ),
                                            CustomTextFormField(
                                              maxLines: 4,
                                              width: getHorizontalSize(
                                                135,
                                              ),
                                              enabled: _Enable,
                                              controller: expController =
                                                  TextEditingController(
                                                      text: exp),
                                              hintText: "Experiencia",
                                              margin: getMargin(
                                                left: 4,
                                              ),
                                              padding: TextFormFieldPadding
                                                  .PaddingT6,
                                            ),
                                          ],
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
                              left: 31,
                              top: 5,
                              right: 29,
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
                                  controller: nameController =
                                      TextEditingController(text: name),
                                  hintText: "Nombre",
                                  margin: getMargin(
                                    left: 4,
                                  ),
                                  padding: TextFormFieldPadding.PaddingT6,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 31,
                              top: 15,
                              right: 29,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 4,
                                  ),
                                  child: Text(
                                    "Apellido Paterno:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                ),
                                CustomTextFormField(
                                  width: getHorizontalSize(
                                    158,
                                  ),
                                  enabled: _Enable,
                                  controller: lastnameController =
                                      TextEditingController(text: lastname),
                                  hintText: "Apellido Paterno",
                                  margin: getMargin(
                                    left: 9,
                                  ),
                                  padding: TextFormFieldPadding.PaddingT6,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 31,
                              top: 15,
                              right: 29,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: Text(
                                    "Apellido Materno:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                ),
                                CustomTextFormField(
                                  width: getHorizontalSize(
                                    158,
                                  ),
                                  enabled: _Enable,
                                  controller: lastnameoneController =
                                      TextEditingController(text: lastnameone),
                                  hintText: "Apellido Materno",
                                  margin: getMargin(
                                    left: 1,
                                  ),
                                  variant:
                                      TextFormFieldVariant.OutlineIndigo50_1,
                                  padding: TextFormFieldPadding.PaddingT6,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 36,
                                top: 15,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Edad:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                  CustomTextFormField(
                                    width: getHorizontalSize(
                                      100,
                                    ),
                                    enabled: _Enable,
                                    controller: dateController =
                                        TextEditingController(text: date),
                                    margin: getMargin(
                                      left: 1,
                                    ),
                                    variant:
                                        TextFormFieldVariant.OutlineIndigo50_1,
                                    padding: TextFormFieldPadding.PaddingT6,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 30,
                                    ),
                                    child: Text(
                                      "Sexo:",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 35,
                              top: 15,
                              right: 29,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                ),
                                Expanded(
                                  child: CustomTextFormField(
                                    enabled: _Enable,
                                    controller: phonenumberController =
                                        TextEditingController(
                                            text: phone.toString()),
                                    hintText: "Teléfono",
                                    margin: getMargin(
                                      left: 7,
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
                              top: 15,
                              right: 29,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "C.P.:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                ),
                                CustomTextFormField(
                                  width: getHorizontalSize(
                                    145,
                                  ),
                                  enabled: _Enable,
                                  controller: postalcodeController =
                                      TextEditingController(
                                          text: cp.toString()),
                                  hintText: "Código Postal",
                                  margin: getMargin(
                                    left: 6,
                                  ),
                                  padding: TextFormFieldPadding.PaddingT6,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 11,
                                    bottom: 4,
                                  ),
                                  child: Text(
                                    "N°:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                ),
                                CustomTextFormField(
                                  width: getHorizontalSize(
                                    78,
                                  ),
                                  enabled: _Enable,
                                  controller: numstreetController =
                                      TextEditingController(
                                          text: numstreet.toString()),
                                  hintText: "N°:",
                                  margin: getMargin(
                                    left: 6,
                                  ),
                                  padding: TextFormFieldPadding.PaddingT6,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 32,
                              top: 15,
                              right: 29,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "Calle:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                ),
                                Expanded(
                                  child: CustomTextFormField(
                                    enabled: _Enable,
                                    controller: streetController =
                                        TextEditingController(text: street),
                                    hintText: "Calle",
                                    margin: getMargin(
                                      left: 6,
                                    ),
                                    variant:
                                        TextFormFieldVariant.OutlineIndigo50_1,
                                    padding: TextFormFieldPadding.PaddingT6,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 28,
                              top: 15,
                              right: 29,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 0,
                                  ),
                                  child: Text(
                                    "Municipio:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                ),
                                CustomTextFormField(
                                  width: getHorizontalSize(
                                    221,
                                  ),
                                  enabled: _Enable,
                                  controller: municipalityController =
                                      TextEditingController(text: mun),
                                  hintText: "Municipio",
                                  margin: getMargin(
                                    left: 5,
                                  ),
                                  padding: TextFormFieldPadding.PaddingT6,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 28,
                              top: 15,
                              right: 29,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Ciudad:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                ),
                                Expanded(
                                  child: CustomTextFormField(
                                    enabled: _Enable,
                                    controller: cityController =
                                        TextEditingController(text: city),
                                    hintText: "Ciudad",
                                    margin: getMargin(
                                      left: 4,
                                    ),
                                    padding: TextFormFieldPadding.PaddingT6,
                                    textInputAction: TextInputAction.done,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 50,
                              top: 10,
                              right: 50,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Visibility(
                                  visible: _Button,
                                  child: CustomButton(
                                    height: getVerticalSize(
                                      31,
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
                                    text: "Actualizar",
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
                                                          PerfilpaseadorScreen()));
                                            });
                                          },
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
                          Padding(
                            padding: getPadding(
                              left: 130,
                              top: 10,
                              //right: 100,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                  height: getVerticalSize(
                                    31,
                                  ),
                                  width: getHorizontalSize(
                                    113,
                                  ),
                                  text: "Cerrar Sesión",
                                  onTap: () {
                                    FirebaseAuth.instance.signOut();
                                    Navigator.popUntil(
                                        context,
                                        ModalRoute.withName(
                                            AppRoutes.welcomeScreen));
                                  },
                                  variant: ButtonVariant.OutlineBlack9003f_2,
                                  shape: ButtonShape.RoundedBorder15,
                                  padding: ButtonPadding.PaddingAll6,
                                  fontStyle: ButtonFontStyle
                                      .UrbanistRomanSemiBold15Gray900,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
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
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
