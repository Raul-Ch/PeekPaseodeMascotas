import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                height: getVerticalSize(799),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: getVerticalSize(797),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgWelcome,
                                height: getVerticalSize(797),
                                width: getHorizontalSize(375),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(bottom: 68),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgframe,
                                              height: getVerticalSize(32),
                                              width: getHorizontalSize(375)),
                                          Container(
                                              width: double.maxFinite,
                                              margin: getMargin(top: 31),
                                              padding: getPadding(
                                                  left: 23,
                                                  top: 10,
                                                  right: 23,
                                                  bottom: 10),
                                              decoration: AppDecoration
                                                  .fillLightgreen200,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 9),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          196),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              8),
                                                                  child: Text(
                                                                      "Peek’ ",
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .txtArtographieMedium25)),
                                                              Text(
                                                                  " Paseo de Mascotas",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtArtographieMedium25)
                                                            ])),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPeek2,
                                                        height: getVerticalSize(
                                                            107),
                                                        width:
                                                            getHorizontalSize(
                                                                95),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    22)),
                                                        margin: getMargin(
                                                            left: 5,
                                                            top: 10,
                                                            bottom: 5))
                                                  ])),
                                          const Spacer(),
                                          CustomButton(
                                              height: getVerticalSize(55),
                                              text: "Iniciar Sesión",
                                              margin: getMargin(
                                                  left: 21, right: 23),
                                              padding:
                                                  ButtonPadding.PaddingAll19,
                                              fontStyle: ButtonFontStyle
                                                  .UrbanistRomanMedium15,
                                              onTap: () {
                                                LoginIn(context);
                                              }),
                                          CustomButton(
                                              height: getVerticalSize(55),
                                              text: "Registrarme",
                                              margin: getMargin(
                                                  left: 23, top: 20, right: 21),
                                              variant: ButtonVariant.White,
                                              padding:
                                                  ButtonPadding.PaddingAll19,
                                              fontStyle: ButtonFontStyle
                                                  .UrbanistRomanMedium15Gray900,
                                              onTap: () {
                                                Register(context);
                                              })
                                        ])))
                          ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgframe,
                      height: getVerticalSize(32),
                      width: getHorizontalSize(375),
                      alignment: Alignment.bottomCenter)
                ]))));
  }

  LoginIn(BuildContext context) {
    //Navigator.pop(context);
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  Register(BuildContext context) {
    //Navigator.pop(context);
    Navigator.pushNamed(context, AppRoutes.registroScreen);
  }
}
