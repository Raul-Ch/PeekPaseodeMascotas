import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PerfilduenioScreen extends StatefulWidget {
  const PerfilduenioScreen({Key? key}) : super(key: key);

  @override
  State<PerfilduenioScreen> createState() => _PerfilduenioScreen();
}

//Declaracion de variables relacionadas al uso de Firebase BD
var user = FirebaseAuth.instance.currentUser!;
var uid = FirebaseAuth.instance.currentUser!.uid;

//Esta clase deshabilitara los TextFields utilizados
class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class _PerfilduenioScreen extends State<PerfilduenioScreen> {
  late var nameController = TextEditingController();
  late var lastnameController = TextEditingController();
  late var lastnameoneController = TextEditingController();
  late var dateController = TextEditingController();
  //late var genderController = TextEditingController();
  late var phonenumberController = TextEditingController();
  late var cpinputController = TextEditingController();
  late var numstreetController = TextEditingController();
  late var streetController = TextEditingController();
  late var municipalityController = TextEditingController();
  late var cityController = TextEditingController();
  //String _appBarTitle = '';

// Variables del codigo
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
    nameController.dispose();
    lastnameController.dispose();
    lastnameoneController.dispose();
    dateController.dispose();
    //genderController.dispose();
    phonenumberController.dispose();
    cpinputController.dispose();
    numstreetController.dispose();
    streetController.dispose();
    municipalityController.dispose();
    cityController.dispose();
    super.dispose();
  }

//Nuestro metodo futuro a utilizar encargado de actualizar la BD con los controladores de texto recogidos
//REGISTRO
  Future Actualizar() async {
    user = FirebaseAuth.instance.currentUser!;
    uid = FirebaseAuth.instance.currentUser!.uid;
    //crear usuario
    await FirebaseFirestore.instance.collection("duenios").doc(uid).update({
      'Nombre': nameController.text.trim(),
      'Apellido Paterno': lastnameController.text.trim(),
      'Apellido Materno': lastnameoneController.text.trim(),
      'Cumpleaños': dateController.text.trim(),
      'Telefono': int.parse(phonenumberController.text.trim()),
      'CP': int.parse(cpinputController.text.trim()),
      'Num Calle': int.parse(numstreetController.text.trim()),
      'Calle': streetController.text.trim(),
      'Municipio': municipalityController.text.trim(),
      'Ciudad': cityController.text.trim(),
    });
  }

//Esta función no solo nos mostrara el nombre del usuario en la APPBAR tambien sera la encargada de cargar los datos de nuestra BD actual a variables utilizadas en los TextField
  Future appBarTittle() async {
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
        print("Document does not exist on the database uid:  $uid");
      }
    });
  }

//Para cargar los datos antes que cualquier cosa y evitar valores nulos especificamos que el metodo anterior se correra para cargar los
//datos una vez al principio del mismo llamado de esta clase/pagina de usuarios
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
          height: getVerticalSize(
            756,
          ),
          width: double.maxFinite,
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
        resizeToAvoidBottomInset: true,
        body: SizedBox(
          height: (MediaQuery.of(context).size.height),
          width: double.maxFinite,
          child: ListView(
            shrinkWrap: true,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: (MediaQuery.of(context).size.height),
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBackground,
                            height: getVerticalSize(
                              756,
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
                                left: 24,
                                top: 56,
                                right: 33,
                              ),
                              child: SizedBox(
                                height: (MediaQuery.of(context).size.height),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 150,
                                      ),
                                      child: Text(
                                        "¡Tú!",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanBold20,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgduenio,
                                      height: getVerticalSize(
                                        120,
                                      ),
                                      width: getHorizontalSize(
                                        125,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          62,
                                        ),
                                      ),
                                      margin: getMargin(
                                        left: 100,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 3,
                                        top: 26,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                              bottom: 2,
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
                                              200,
                                            ),
                                            enabled: _Enable,
                                            //focusNode: FocusNode(),
                                            controller: nameController =
                                                TextEditingController(
                                                    text: name),
                                            //hintText: "Apellido Paterno",
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 3,
                                        top: 15,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                            ),
                                            child: Text(
                                              "Apellido Paterno:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              152,
                                            ),
                                            enabled: _Enable,
                                            //focusNode: FocusNode(),
                                            controller: lastnameController =
                                                TextEditingController(
                                                    text: lastname),
                                            //hintText: "Apellido Paterno",
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 3,
                                        top: 15,
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 5,
                                            ),
                                            child: Text(
                                              "Apellido Materno:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              155,
                                            ),
                                            //focusNode: FocusNode(),
                                            enabled: _Enable,
                                            controller: lastnameoneController =
                                                TextEditingController(
                                                    text: lastnameone),
                                            //hintText: "Apellido Materno",
                                            margin: getMargin(
                                              left: 1,
                                            ),
                                            variant: TextFormFieldVariant
                                                .OutlineIndigo50_1,
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 15,
                                        right: 103,
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
                                              "Edad:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              100,
                                            ),
                                            //focusNode: FocusNode(),
                                            enabled: _Enable,
                                            controller: dateController =
                                                TextEditingController(
                                                    text: date),
                                            margin: getMargin(
                                              left: 1,
                                            ),
                                            variant: TextFormFieldVariant
                                                .OutlineIndigo50_1,
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                            ),
                                            child: Text(
                                              "Sexo:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 4,
                                        top: 4,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 15,
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
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              224,
                                            ),
                                            //focusNode: FocusNode(),
                                            enabled: _Enable,
                                            controller: phonenumberController =
                                                TextEditingController(
                                                    text: phone.toString()),
                                            hintText: "Teléfono",
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                        top: 10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 4,
                                            ),
                                            child: Text(
                                              "C.P.:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              148,
                                            ),
                                            //focusNode: FocusNode(),
                                            enabled: _Enable,
                                            controller: cpinputController =
                                                TextEditingController(
                                                    text: cp.toString()),
                                            hintText: "Código Postal",
                                            margin: getMargin(
                                              bottom: 1,
                                            ),
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 4,
                                            ),
                                            child: Text(
                                              "N°:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              100,
                                            ),
                                            //focusNode: FocusNode(),
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
                                        left: 4,
                                        top: 15,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              257,
                                            ),
                                            //focusNode: FocusNode(),
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
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 15,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 5,
                                            ),
                                            child: Text(
                                              "Municipio:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              221,
                                            ),
                                            //focusNode: FocusNode(),
                                            enabled: _Enable,
                                            controller: municipalityController =
                                                TextEditingController(
                                                    text: mun),
                                            hintText: "Municipio",
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 15,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              243,
                                            ),
                                            //focusNode: FocusNode(),
                                            enabled: _Enable,
                                            controller: cityController =
                                                TextEditingController(
                                                    text: city),
                                            hintText: "Ciudad",
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                            textInputAction:
                                                TextInputAction.done,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 0,
                                        top: 19,
                                        right: 0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                              text: "Editar",
                                              onTap: () {
                                                setState(() {
                                                  _Enable = true;
                                                  _Button = false;
                                                  _Button2 = true;
                                                });
                                              },
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
                                                      Actualizar();
                                                      setState(() {
                                                        // Regresamos los valores bool a como estaban antes de presionar el boton editar
                                                        _Enable = false;
                                                        _Button = true;
                                                        //appBarTittle();
                                                        Navigator.pop(context);
                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const PerfilduenioScreen()));
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
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 100,
                                        top: 10,
                                        right: 50,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                            variant: ButtonVariant
                                                .OutlineBlack9003f_2,
                                            shape: ButtonShape.RoundedBorder15,
                                            padding: ButtonPadding.PaddingAll6,
                                            fontStyle: ButtonFontStyle
                                                .UrbanistRomanSemiBold15Gray900,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                      400,
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
