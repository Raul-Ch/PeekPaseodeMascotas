import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';

class RegistroPaseadorTwoScreen extends StatelessWidget {
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

  onTapTarifa(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroPaseadorTarifaScreen);
  }
}
