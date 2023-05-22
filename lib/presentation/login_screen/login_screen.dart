import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

import 'models/users.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future logIn() async {
    final user = FirebaseAuth.instance.currentUser!;
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final uid2 = user.uid;

    //var collectionRef = FirebaseFirestore.instance.collection('duenios');
    //var doc = await collectionRef.doc(uid2).get();

    //bool flag = doc.exists;

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      //print(flag);
      final doc = await FirebaseFirestore.instance
          .collection('duenios')
          .doc(uid2)
          .get();
      if (doc.exists) {
        Navigator.pushNamed(context, AppRoutes.menuDuenioScreen);
      } else {
        Navigator.pushNamed(context, AppRoutes.menuPaseadorScreen);
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(
                              left: 20, top: 51, right: 22, bottom: 51),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 41,
                                    width: 41,
                                    margin: getMargin(left: 3),
                                    onTap: () {
                                      onTapBtnArrowleft(context);
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft)),
                                Container(
                                    width: getHorizontalSize(281),
                                    margin:
                                        getMargin(left: 3, top: 64, right: 48),
                                    child: Text(
                                        "¡Bienvenido, que bueno verte de nuevo!",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKonnectRegular25)),
                                CustomTextFormField(
                                    //focusNode: FocusNode(),
                                    controller: emailController,
                                    hintText: "Ingresa tu correo",
                                    margin: getMargin(top: 50)),
                                CustomTextFormField(
                                    //focusNode: FocusNode(),
                                    controller: passwordController,
                                    hintText: "Ingresa tu contraseña",
                                    margin: getMargin(top: 15),
                                    variant:
                                        TextFormFieldVariant.OutlineIndigo50_1,
                                    padding: TextFormFieldPadding.PaddingT19_1,
                                    textInputAction: TextInputAction.done,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 17,
                                            right: 16,
                                            bottom: 17),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgFluenteye20filled)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(56))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapTxtOlvidastetcontr(context);
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(top: 15, right: 2),
                                            child: Text(
                                                "¿Olvidaste tú contraseña?",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanSemiBold14)))),
                                CustomButton(
                                    height: getVerticalSize(56),
                                    onTap: logIn,
                                    text: "Iniciar Sesión",
                                    margin: getMargin(left: 2, top: 67),
                                    padding: ButtonPadding.PaddingAll19,
                                    fontStyle:
                                        ButtonFontStyle.UrbanistRomanMedium15),
                                Spacer(),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtAnnotienesuna(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 35),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "¿Aún no tienes una cuenta? ",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Urbanist',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.15))),
                                              TextSpan(
                                                  text: "Regístrate Aquí",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .orangeA200,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Urbanist',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.15)))
                                            ]),
                                            textAlign: TextAlign.left)))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgframe,
                                height: getVerticalSize(32),
                                width: getHorizontalSize(375)),
                            Spacer(),
                            CustomImageView(
                                imagePath: ImageConstant.imgframe,
                                height: getVerticalSize(32),
                                width: getHorizontalSize(375))
                          ]))
                ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtOlvidastetcontr(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.olvidarContraseniaScreen);
  }

  onTapTxtAnnotienesuna(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroScreen);
  }
}
