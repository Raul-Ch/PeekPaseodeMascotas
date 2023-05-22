import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class OlvidarContraseniaScreen extends StatefulWidget {
  const OlvidarContraseniaScreen({Key? key}) : super(key: key);
  @override
  State<OlvidarContraseniaScreen> createState() => _OlvidarContraseniaScreen();
}

class _OlvidarContraseniaScreen extends State<OlvidarContraseniaScreen> {
  final enteryouremailController = TextEditingController();

  @override
  void dispose() {
    enteryouremailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      //Como aprte del paquete de Firebase automaticamente podemos enviar correos para reestablecer contraseñas a los correos autentificados y guardados eN fIREBASE
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: enteryouremailController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(
                "Se ha enviado un link a su correo para reestablecer la contraseña",
                textAlign: TextAlign.center,
              ),
            );
          });
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgframe,
                height: getVerticalSize(
                  32,
                ),
                width: getHorizontalSize(
                  375,
                ),
              ),
              CustomIconButton(
                height: 41,
                width: 41,
                margin: getMargin(
                  left: 22,
                  top: 10,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgArrowleft,
                  onTap: () {
                    onTapBtnArrowleft(context);
                  },
                ),
              ),
              Container(
                width: getHorizontalSize(
                  177,
                ),
                margin: getMargin(
                  left: 20,
                  top: 11,
                ),
                child: Text(
                  "¿Olvidaste tu \ncontraseña?",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold30,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  294,
                ),
                margin: getMargin(
                  left: 22,
                  top: 17,
                  right: 58,
                ),
                child: Text(
                  "No te preocupes, a cualquiera nos sucede. \nPorfavor, ingresa el correo con el que te registraste, para enviarle una link que te permita cambiar la contraseña.",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanMedium16,
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: enteryouremailController,
                hintText: "Ingresar correo electronico",
                margin: getMargin(
                  left: 20,
                  top: 20,
                  right: 24,
                ),
                variant: TextFormFieldVariant.OutlineIndigo50_1,
                textInputAction: TextInputAction.done,
                alignment: Alignment.center,
              ),
              CustomButton(
                height: getVerticalSize(
                  56,
                ),
                text: "Enviar",
                onTap: passwordReset,
                margin: getMargin(
                  left: 20,
                  top: 27,
                  right: 24,
                ),
                padding: ButtonPadding.PaddingAll19,
                alignment: Alignment.center,
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "¿Ya recordaste tu contraseña? ",
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                          letterSpacing: getHorizontalSize(
                            0.15,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "Ingresa Aquí",
                        style: TextStyle(
                          color: ColorConstant.orangeA200,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          letterSpacing: getHorizontalSize(
                            0.15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
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
                  top: 6,
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
}
