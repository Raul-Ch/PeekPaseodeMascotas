import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/presentation/agendarcita_screen/agendarcita_screen.dart';
import 'package:peek_app/presentation/vercitasduenio_screen/paseoduenioagendadas_screen.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PerfilpaseadorcitasScreen extends StatefulWidget {
  String paseadorID;
  PerfilpaseadorcitasScreen({Key? key, required this.paseadorID})
      : super(key: key);
  @override
  State<PerfilpaseadorcitasScreen> createState() =>
      _PerfilpaseadorcitasScreen();
}

//desahabilitamos los textfield para que solo sean modificables cuando lo indicamos mediante valores bool
class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

//var user = FirebaseAuth.instance.currentUser!;
//var uid = FirebaseAuth.instance.currentUser!.uid;
bool _Enable = false;

class _PerfilpaseadorcitasScreen extends State<PerfilpaseadorcitasScreen> {
  late String paseadorIDs = widget.paseadorID;
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
  TextEditingController rateamountController = TextEditingController();
  TextEditingController commentsController = TextEditingController();

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
    commentsController.dispose();
    super.dispose();
  }

  Future appBarTittle() async {
    FirebaseFirestore.instance
        .collection('paseadores')
        .doc(paseadorIDs)
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
        print("Document does not exist on the database uid:  " + paseadorIDs);
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
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: getPadding(
                    left: 22,
                    top: 0,
                    right: 22,
                    bottom: 100,
                  ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        onTap: () {
                          //Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AgendarcitaScreen(
                                        paseadorID: paseadorIDs,
                                        paseador: name,
                                      )));
                        },
                        height: getVerticalSize(
                          70,
                        ),
                        width: getHorizontalSize(
                          135,
                        ),
                        text: "¡Agendame!",
                        variant: ButtonVariant.OutlineBlack9003f_2,
                        shape: ButtonShape.RoundedBorder19,
                        fontStyle: ButtonFontStyle.UrbanistRomanSemiBold20,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                          top: 30,
                          right: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                                bottom: 30,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "¡Tú!",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: getVerticalSize(
                                    43,
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
                                                  color: ColorConstant.gray900,
                                                  fontSize: getFontSize(
                                                    20,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ": ",
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
                                      /*  Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 8,
                                          ),
                                          child: Row(
                                            children: [
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgStar12,
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
                                                    ImageConstant.imgStar22,
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
                                                    ImageConstant.imgStar42,
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
                                                      svgPath:
                                                          ImageConstant.imgPlay,
                                                      height: getVerticalSize(
                                                        16,
                                                      ),
                                                      width: getHorizontalSize(
                                                        15,
                                                      ),
                                                      alignment:
                                                          Alignment.topRight,
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar32,
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
                                                      alignment:
                                                          Alignment.centerLeft,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ), */
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
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 1,
                                            bottom: 3,
                                          ),
                                          child: Text(
                                            "Tarifa:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistRomanBold20,
                                          ),
                                        ),
                                        CustomTextFormField(
                                          width: getHorizontalSize(
                                            110,
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
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 39,
                                          bottom: 5,
                                        ),
                                        child: Text(
                                          "Exp:",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold20,
                                        ),
                                      ),
                                      CustomTextFormField(
                                        enabled: _Enable,
                                        maxLines: 4,
                                        width: getHorizontalSize(
                                          135,
                                        ),
                                        controller: expController =
                                            TextEditingController(text: exp),
                                        hintText: "Experiencia",
                                        margin: getMargin(
                                          left: 4,
                                        ),
                                        padding: TextFormFieldPadding.PaddingT6,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 9,
                          right: 7,
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 11,
                            top: 3,
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
                                variant: TextFormFieldVariant.OutlineIndigo50_1,
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
                          left: 10,
                          top: 4,
                          right: 7,
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
                          left: 12,
                          top: 7,
                          right: 7,
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
                                "C.P.:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                148,
                              ),
                              focusNode: FocusNode(),
                              controller: postalcodeController,
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
                            CustomButton(
                              height: getVerticalSize(
                                30,
                              ),
                              width: getHorizontalSize(
                                76,
                              ),
                              text: "Núm. C.",
                              margin: getMargin(
                                left: 5,
                              ),
                              variant: ButtonVariant.OutlineIndigo50,
                              padding: ButtonPadding.PaddingAll6,
                              fontStyle: ButtonFontStyle
                                  .UrbanistRomanMedium15Bluegray400,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 8,
                          right: 7,
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
                                variant: TextFormFieldVariant.OutlineIndigo50_1,
                                padding: TextFormFieldPadding.PaddingT6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 7,
                          right: 7,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 5,
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
                          left: 6,
                          top: 9,
                          right: 7,
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            right: 10,
                            bottom: 30,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 12,
                                  bottom: 5,
                                ),
                                child: Text(
                                  "Comentarios:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20,
                                ),
                              ),
                              SingleChildScrollView(
                                child: Container(
                                  child: CustomTextFormField(
                                    enabled: _Enable,
                                    width: getHorizontalSize(
                                      184,
                                    ),
                                    //focusNode: FocusNode(),
                                    controller: commentsController,
                                    hintText: "Fue muy atento...",
                                    variant:
                                        TextFormFieldVariant.OutlineBlack9003f,
                                    padding: TextFormFieldPadding.PaddingAll12,
                                    fontStyle: TextFormFieldFontStyle
                                        .MontserratAlternatesSemiBold15,
                                    textInputAction: TextInputAction.done,
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
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
