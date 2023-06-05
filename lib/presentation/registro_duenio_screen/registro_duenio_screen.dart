import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'model/crear_mascota_model.dart';
import 'model/registro_duenio_model.dart';

class RegistroDuenioScreen extends StatefulWidget {
  //final VoidCallback showLoginScreen;
  const RegistroDuenioScreen({Key? key}) : super(key: key);

  @override
  State<RegistroDuenioScreen> createState() => _RegistroDuenioScreen();
}

class _RegistroDuenioScreen extends State<RegistroDuenioScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final lastnameoneController = TextEditingController();
  final dateController = TextEditingController();
  final phoneController = TextEditingController();
  final zipcodeController = TextEditingController();
  final streetnumberController = TextEditingController();
  final streetController = TextEditingController();
  final municipalityController = TextEditingController();
  final cityController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    firstnameController.dispose();
    lastnameController.dispose();
    lastnameoneController.dispose();
    dateController.dispose();
    phoneController.dispose();
    zipcodeController.dispose();
    streetnumberController.dispose();
    streetController.dispose();
    municipalityController.dispose();
    cityController.dispose();
    super.dispose();
  }

  bool passwordConfirm() {
    if (passwordController.text.trim() ==
        confirmpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  Future register() async {
    try {
      if (passwordConfirm()) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim());

        addDuenioDetails(
          firstnameController.text.trim(),
          lastnameController.text.trim(),
          lastnameoneController.text.trim(),
          dateController.text.trim(),
          int.parse(phoneController.text.trim()),
          int.parse(zipcodeController.text.trim()),
          int.parse(streetnumberController.text.trim()),
          streetController.text.trim(),
          municipalityController.text.trim(),
          cityController.text.trim(),
        );

        createPet(
            "Nombre", "Tamaño", "Raza", 0.0, 0, false, "F/M", "Personalidad");

        Navigator.pop(context);
        Navigator.pushNamed(context, AppRoutes.loginScreen);
      } else {
        showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                content: Text("Las contraseñas no coinciden"),
              );
            });
      }
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.green,
            title: Center(
              child: Text(
                message,
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
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
                            CustomImageView(
                                imagePath: ImageConstant.imgframe,
                                height: getVerticalSize(30),
                                width: getHorizontalSize(375)),
                            CustomIconButton(
                                height: 41,
                                width: 41,
                                margin: getMargin(left: 19, top: 13),
                                alignment: Alignment.centerLeft,
                                onTap: () {
                                  onTapBtnArrowleft(context);
                                },
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: getHorizontalSize(257),
                                    margin: getMargin(left: 25, top: 7),
                                    child: Text(
                                        "¡Hola! Regístrate para poder comenzar.",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKonnectRegular25))),
                            GestureDetector(
                                onTap: () {
                                  onTapButtons(context);
                                },
                                child: Padding(
                                    padding:
                                        getPadding(left: 28, top: 9, right: 28),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomButton(
                                                  height: getVerticalSize(32),
                                                  text: "Dueño",
                                                  margin: getMargin(right: 21),
                                                  variant: ButtonVariant
                                                      .FillIndigo50)),
                                          Expanded(
                                              child: CustomButton(
                                                  height: getVerticalSize(32),
                                                  text: "Paseador",
                                                  margin: getMargin(left: 21)))
                                        ]))),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: emailController,
                                hintText: "Correo",
                                margin:
                                    getMargin(left: 24, top: 19, right: 20)),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: firstnameController,
                                hintText: "Nombre",
                                margin:
                                    getMargin(left: 24, top: 12, right: 20)),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: lastnameController,
                                hintText: "Apellido Paterno",
                                margin:
                                    getMargin(left: 24, top: 12, right: 20)),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: lastnameoneController,
                                hintText: "Apellido Materno",
                                margin: getMargin(left: 24, top: 12, right: 20),
                                variant:
                                    TextFormFieldVariant.OutlineIndigo50_1),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: passwordController,
                                hintText: "Contraseña",
                                margin:
                                    getMargin(left: 24, top: 10, right: 20)),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: confirmpasswordController,
                                hintText: "Confirmar Contraseña",
                                margin:
                                    getMargin(left: 22, top: 10, right: 22)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 22, top: 19),
                                    child: Text(
                                        "Selecciona tu fecha de nacimiento",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanMedium15))),
                            Padding(
                                padding:
                                    getPadding(top: 6, left: 100, right: 100),
                                child: TextField(
                                    textAlign: TextAlign.center,
                                    controller: dateController,
                                    onTap: () {
                                      onTapFechaone(context);
                                    },
                                    style: AppStyle.txtUrbanistRomanMedium15)),
/*                             CustomButton(
                                height: getVerticalSize(32),
                                text: "Fecha",
                                margin: getMargin(left: 24, top: 5, right: 24)), */
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: phoneController,
                                hintText: "Teléfono",
                                margin:
                                    getMargin(left: 24, top: 30, right: 20)),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: zipcodeController,
                                hintText: "Código Postal",
                                margin:
                                    getMargin(left: 24, top: 12, right: 20)),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: streetnumberController,
                                hintText: "Núm. Calle",
                                margin: getMargin(left: 24, top: 12, right: 20),
                                variant:
                                    TextFormFieldVariant.OutlineIndigo50_1),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: streetController,
                                hintText: "Calle",
                                margin: getMargin(left: 24, top: 12, right: 20),
                                variant:
                                    TextFormFieldVariant.OutlineIndigo50_1),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: municipalityController,
                                hintText: "Municipio",
                                margin:
                                    getMargin(left: 24, top: 13, right: 20)),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: cityController,
                                hintText: "Ciudad",
                                margin: getMargin(left: 24, top: 13, right: 20),
                                textInputAction: TextInputAction.done),
                            CustomButton(
                                height: getVerticalSize(48),
                                text: "Registrarme",
                                onTap: register,
                                margin: getMargin(left: 24, top: 33, right: 20),
                                padding: ButtonPadding.PaddingAll15),
                            GestureDetector(
                                onTap: () {
                                  onTapButtons(context);
                                },
                                child: Padding(
                                    padding: getPadding(top: 16),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "¿Ya tienes una cuenta? ",
                                              style: TextStyle(
                                                  color: ColorConstant.gray900,
                                                  fontSize: getFontSize(15),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing:
                                                      getHorizontalSize(0.15))),
                                          TextSpan(
                                              text: "Ingresa Aquí",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.orangeA200,
                                                  fontSize: getFontSize(15),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing:
                                                      getHorizontalSize(0.15)))
                                        ]),
                                        textAlign: TextAlign.left))),
                            CustomImageView(
                                imagePath: ImageConstant.imgframe,
                                height: getVerticalSize(32),
                                width: getHorizontalSize(373),
                                margin: getMargin(top: 13))
                          ])))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  Future<void> onTapFechaone(BuildContext context) async {
    DateTime? dateTime = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1970),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      dateController.text = DateFormat.yMd().format(pickedDate);
      return null;
    });
  }

  onTapButtons(BuildContext context) {
    Navigator.pop(context);
    Navigator.pushNamed(context, AppRoutes.registroPaseadorScreen);
  }
}
