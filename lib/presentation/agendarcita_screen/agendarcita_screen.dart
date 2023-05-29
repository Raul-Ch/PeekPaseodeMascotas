import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';

class AgendarcitaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  702.5,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBackground,
                      height: getVerticalSize(
                        720,
                      ),
                      width: getHorizontalSize(
                        375,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 30,
                            ),
                            child: Text(
                              "Agendar CItas",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtArtographieMedium30,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 24,
                                top: 20,
                              ),
                              child: Text(
                                "Selecciona tu fecha de nacimiento",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtUrbanistRomanMedium15Bluegray400,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 24,
                                top: 9,
                              ),
                              child: Text(
                                "Fecha",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtUrbanistRomanMedium15Bluegray400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 24,
                            ),
                            child: Text(
                              "HorarIo:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtArtographieMedium30,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 24,
                                top: 4,
                              ),
                              child: Text(
                                "Selecciona tu fecha de nacimiento",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtUrbanistRomanMedium15Bluegray400,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 24,
                                top: 6,
                              ),
                              child: Text(
                                "Fecha",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtUrbanistRomanMedium15Bluegray400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 24,
                            ),
                            child: Text(
                              "CITA:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtArtographieMedium30,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Fecha:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium16,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    131,
                                  ),
                                  margin: getMargin(
                                    left: 12,
                                  ),
                                  padding: getPadding(
                                    left: 30,
                                    top: 1,
                                    right: 57,
                                    bottom: 1,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineIndigo50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder8,
                                  ),
                                  child: Text(
                                    "10",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 18,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Hora:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium16,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    126,
                                  ),
                                  margin: getMargin(
                                    left: 21,
                                  ),
                                  padding: getPadding(
                                    left: 30,
                                    top: 1,
                                    right: 52,
                                    bottom: 1,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineIndigo50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder8,
                                  ),
                                  child: Text(
                                    "06",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 19,
                              right: 22,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Calle:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium16,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    125,
                                  ),
                                  margin: getMargin(
                                    left: 11,
                                  ),
                                  padding: getPadding(
                                    left: 30,
                                    top: 1,
                                    right: 37,
                                    bottom: 1,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineIndigo50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder8,
                                  ),
                                  child: Text(
                                    "Álamo",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium15,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 25,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Número:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium16,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    54,
                                  ),
                                  margin: getMargin(
                                    left: 17,
                                  ),
                                  padding: getPadding(
                                    left: 14,
                                    top: 1,
                                    right: 14,
                                    bottom: 1,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineIndigo50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder8,
                                  ),
                                  child: Text(
                                    "212",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 18,
                              right: 22,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                  ),
                                  child: Text(
                                    "Municipio:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium16,
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    22,
                                  ),
                                  width: getHorizontalSize(
                                    248,
                                  ),
                                  margin: getMargin(
                                    left: 12,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: getVerticalSize(
                                            22,
                                          ),
                                          width: getHorizontalSize(
                                            248,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.gray50,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                8,
                                              ),
                                            ),
                                            border: Border.all(
                                              color: ColorConstant.indigo50,
                                              width: getHorizontalSize(
                                                1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          "Naucalpan de Juarez",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanMedium15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 23,
                              top: 17,
                              right: 23,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Colonia:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium16,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    248,
                                  ),
                                  padding: getPadding(
                                    left: 30,
                                    top: 1,
                                    right: 82,
                                    bottom: 1,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineIndigo50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder8,
                                  ),
                                  child: Text(
                                    "Santa Cruz",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 24,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                  height: getVerticalSize(
                                    34,
                                  ),
                                  width: getHorizontalSize(
                                    113,
                                  ),
                                  text: "Editar",
                                  variant: ButtonVariant.OutlineBlack9003f,
                                  shape: ButtonShape.RoundedBorder15,
                                  fontStyle: ButtonFontStyle
                                      .UrbanistRomanSemiBold15Gray900,
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    34,
                                  ),
                                  width: getHorizontalSize(
                                    111,
                                  ),
                                  text: "Confirmar",
                                  onTap: () {
                                    Navigator.pushNamed(context,
                                        AppRoutes.vercitasduenioScreen);
                                  },
                                  margin: getMargin(
                                    left: 24,
                                  ),
                                  variant: ButtonVariant.OutlineBlack9003f,
                                  shape: ButtonShape.RoundedBorder15,
                                  fontStyle: ButtonFontStyle
                                      .UrbanistRomanSemiBold15Gray900,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgframe,
                height: getVerticalSize(
                  30,
                ),
                width: getHorizontalSize(
                  375,
                ),
                margin: getMargin(
                  top: 0,
                  bottom: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
