import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/presentation/registro_paseador_screen/registro_paseador_two_screen/registro_paseador_tarifa_screen/model/registro_paseador_tarifa.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';

class RegistroPaseadorTwoScreen extends StatefulWidget {
  const RegistroPaseadorTwoScreen({Key? key}) : super(key: key);
  @override
  State<RegistroPaseadorTwoScreen> createState() =>
      _RegistroPaseadorTwoScreen();
}

class _RegistroPaseadorTwoScreen extends State<RegistroPaseadorTwoScreen> {
  int tarifa = 150;
  String exp = "Sin experiencia";

  Future tarifanueva() async {
    try {
      addPaseadorLast(
        tarifa,
        exp,
      );
      Navigator.pushNamed(context, AppRoutes.loginScreen);
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
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Container(
                          width: getHorizontalSize(278),
                          margin: getMargin(left: 27, top: 45, right: 69),
                          child: Text(
                              "¡Hola! Regístrate para poder comenzar como paseador.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKonnectRegular25)),
                      Padding(
                          padding: getPadding(left: 25, top: 22, right: 39),
                          child: Row(children: [
                            CustomButton(
                                height: getVerticalSize(37),
                                width: getHorizontalSize(138),
                                text: "Tarifa establecida",
                                onTap: () {
                                  onTapTarifa(context);
                                }),
                            CustomButton(
                                height: getVerticalSize(37),
                                width: getHorizontalSize(138),
                                text: "Soy Nuevo",
                                onTap: () {
                                  onTapTarifaEst(context);
                                },
                                margin: getMargin(left: 35))
                          ])),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Registrarme",
                          margin: getMargin(left: 23, right: 21),
                          padding: ButtonPadding.PaddingAll19,
                          alignment: Alignment.center),
                      CustomImageView(
                          imagePath: ImageConstant.imgframe,
                          height: getVerticalSize(32),
                          width: getHorizontalSize(375),
                          margin: getMargin(top: 53))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTarifa(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroPaseadorTarifaScreen);
  }

  onTapTarifaEst(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: tarifanueva,
    );

    // set up the button
    Widget NopeButton = TextButton(
      child: Text("Cancelar"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Tarifa"),
      content: Text(
          textAlign: TextAlign.left,
          "La tarifa se establecera en 150 pesos y tu experiencia quedara en blanco. \n\nNo te preocupes podras modificarlo mas adelante"),
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
