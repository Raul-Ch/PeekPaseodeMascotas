import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';

class RegistroScreen extends StatelessWidget {
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
                          margin: getMargin(left: 25, top: 13),
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Container(
                          width: getHorizontalSize(257),
                          margin: getMargin(left: 29, top: 12),
                          child: Text("¡Hola! Regístrate para poder comenzar.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKonnectRegular25)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 32, right: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomButton(
                                            height: getVerticalSize(37),
                                            text: "Dueño",
                                            margin: getMargin(right: 21),
                                            onTap: () {
                                              onTapDueo(context);
                                            })),
                                    Expanded(
                                        child: CustomButton(
                                            height: getVerticalSize(37),
                                            text: "Paseador",
                                            margin: getMargin(left: 21),
                                            onTap: () {
                                              onTapPaseador(context);
                                            }))
                                  ]))),
                      Spacer(),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtYatienesunacuenta(context);
                              },
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
                                            color: ColorConstant.orangeA200,
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
                          margin: getMargin(top: 20))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapDueo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroDuenioScreen);
  }

  onTapPaseador(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroPaseadorScreen);
  }

  onTapTxtYatienesunacuenta(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
