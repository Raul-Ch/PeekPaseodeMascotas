import 'block/welcome_bloc.dart';
import 'models/welcome_model.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeBloc>(
        create: (context) =>
            WelcomeBloc(WelcomeState(welcomeModelObj: WelcomeModel()))
              ..add(WelcomeInitialEvent()),
        child: WelcomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeBloc, WelcomeState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  height: getVerticalSize(799),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: getVerticalSize(797),
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgwelcome,
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
                                                    imagePath:
                                                        ImageConstant.imgframe,
                                                    height: getVerticalSize(32),
                                                    width:
                                                        getHorizontalSize(375)),
                                                Container(
                                                    width: double.maxFinite,
                                                    margin: getMargin(top: 31),
                                                    padding: getPadding(
                                                        left: 24,
                                                        top: 10,
                                                        right: 24,
                                                        bottom: 10),
                                                    decoration: AppDecoration
                                                        .fillLightgreen200,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      221),
                                                              margin: getMargin(
                                                                  left: 5,
                                                                  top: 0),
                                                              child: Text(
                                                                  "msg_peek_paseo_de"
                                                                      .tr,
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .welcome)
                                                              //añadir la otra parte
                                                              ),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgPeek2,
                                                              height:
                                                                  getVerticalSize(
                                                                      107),
                                                              width:
                                                                  getHorizontalSize(
                                                                      95),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          22)),
                                                              margin: getMargin(
                                                                  top: 10,
                                                                  bottom: 5))
                                                        ])),
                                                Spacer(),
                                                CustomButton(
                                                    height: getVerticalSize(55),
                                                    text:
                                                        "lbl_iniciar_sesi_n".tr,
                                                    margin: getMargin(
                                                        left: 21, right: 23),
                                                    padding: ButtonPadding
                                                        .PaddingAll19,
                                                    fontStyle: ButtonFontStyle
                                                        .UrbanistRomanMedium15,
                                                    onTap: () {
                                                      onTapIniciarsesin(
                                                          context);
                                                    }),
                                                CustomButton(
                                                    height: getVerticalSize(55),
                                                    text: "lbl_registrarme".tr,
                                                    margin: getMargin(
                                                        left: 23,
                                                        top: 20,
                                                        right: 21),
                                                    variant:
                                                        ButtonVariant.White,
                                                    padding: ButtonPadding
                                                        .PaddingAll19,
                                                    fontStyle: ButtonFontStyle
                                                        .UrbanistRomanMedium15Gray900,
                                                    onTap: () {
                                                      onTapRegistrarme(context);
                                                    })
                                              ])))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgframe,
                        height: getVerticalSize(32),
                        width: getHorizontalSize(375),
                        alignment: Alignment.bottomCenter)
                  ]))));
    });
  }

  onTapIniciarsesin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapRegistrarme(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registroScreen,
    );
  }
}
