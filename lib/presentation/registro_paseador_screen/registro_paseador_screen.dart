import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class RegistroPaseadorScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController firstnameController = TextEditingController();

  TextEditingController lastnameController = TextEditingController();

  TextEditingController lastnameoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController streetnumberController = TextEditingController();

  TextEditingController streetController = TextEditingController();

  TextEditingController municipalityController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
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
                                height: getVerticalSize(32),
                                width: getHorizontalSize(375)),
                            CustomIconButton(
                                height: 41,
                                width: 41,
                                margin: getMargin(left: 22, top: 10),
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
                                    margin: getMargin(left: 25, top: 9),
                                    child: Text(
                                        "¡Hola! Regístrate para poder comenzar.",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKonnectRegular25))),
                            Padding(
                                padding:
                                    getPadding(left: 28, top: 9, right: 28),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: CustomButton(
                                              height: getVerticalSize(32),
                                              text: "Dueño",
                                              margin: getMargin(right: 21),
                                              onTap: () {
                                                onTapDueo(context);
                                              })),
                                      Expanded(
                                          child: CustomButton(
                                              height: getVerticalSize(32),
                                              text: "Paseador",
                                              margin: getMargin(left: 21),
                                              variant:
                                                  ButtonVariant.FillIndigo50))
                                    ])),
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
                                    padding: getPadding(left: 24, top: 18),
                                    child: Text(
                                        "Selecciona tu fecha de nacimiento",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanMedium15))),
                            Padding(
                                padding: getPadding(top: 6),
                                child: Text("Fecha",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium15)),
                            CustomButton(
                                height: getVerticalSize(32),
                                text: "Fecha",
                                margin: getMargin(left: 24, top: 6, right: 24)),
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
                                margin: getMargin(left: 24, top: 33, right: 20),
                                padding: ButtonPadding.PaddingAll15,
                                onTap: () {
                                  onTapRegistrarme(context);
                                }),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtYatienesunacuenta(context);
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
                                width: getHorizontalSize(375),
                                margin: getMargin(top: 12))
                          ])))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapDueo(BuildContext context) {
    Navigator.pop(context);
    Navigator.pushNamed(context, AppRoutes.registroDuenioScreen);
  }

  onTapRegistrarme(BuildContext context) {
    Navigator.pop(context);
    Navigator.pushNamed(context, AppRoutes.registroPaseadorTwoScreen);
  }

  onTapTxtYatienesunacuenta(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroScreen);
  }
}
