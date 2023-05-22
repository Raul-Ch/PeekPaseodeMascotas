import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
//import '../perfilduenio_screen/perfil_duenio_screen.dart';

class PefilduenioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: getVerticalSize(
            812,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFondoverde,
                height: getVerticalSize(
                  604,
                ),
                width: getHorizontalSize(
                  375,
                ),
                alignment: Alignment.bottomCenter,
                margin: getMargin(
                  bottom: 32,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage4,
                      height: getVerticalSize(
                        32,
                      ),
                      width: getHorizontalSize(
                        375,
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: getPadding(
                        left: 7,
                        right: 7,
                        bottom: 3,
                      ),
                      decoration: AppDecoration.fillLightgreen20001,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: getVerticalSize(
                              118,
                            ),
                            width: getHorizontalSize(
                              113,
                            ),
                            margin: getMargin(
                              top: 6,
                              bottom: 14,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPeek299x96,
                                  height: getVerticalSize(
                                    99,
                                  ),
                                  width: getHorizontalSize(
                                    96,
                                  ),
                                  alignment: Alignment.bottomRight,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      32,
                                    ),
                                    width: getHorizontalSize(
                                      34,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgHuellita,
                                          height: getVerticalSize(
                                            32,
                                          ),
                                          width: getHorizontalSize(
                                            34,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgMenudesplegble,
                                          height: getVerticalSize(
                                            6,
                                          ),
                                          width: getHorizontalSize(
                                            17,
                                          ),
                                          alignment: Alignment.bottomCenter,
                                          margin: getMargin(
                                            bottom: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              221,
                            ),
                            margin: getMargin(
                              left: 12,
                              bottom: 11,
                            ),
                            decoration: AppDecoration.txtOutlineBlack90066,
                            child: Text(
                              "Peek’ \nPaseo de Mascotas",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtArtographieMedium25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 125,
                        top: 16,
                      ),
                      child: Text(
                        "¡Tú!",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold20,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          161,
                        ),
                        width: getHorizontalSize(
                          252,
                        ),
                        margin: getMargin(
                          top: 1,
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgduenio,
                              height: getVerticalSize(
                                161,
                              ),
                              width: getHorizontalSize(
                                150,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  80,
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: getPadding(
                                  top: 35,
                                  right: 29,
                                ),
                                child: Text(
                                  "¡Canela!",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: getVerticalSize(
                                  36,
                                ),
                                width: getHorizontalSize(
                                  38,
                                ),
                                margin: getMargin(
                                  bottom: 41,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgHuellita,
                                      height: getVerticalSize(
                                        36,
                                      ),
                                      width: getHorizontalSize(
                                        38,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        margin: getMargin(
                                          bottom: 3,
                                        ),
                                        decoration:
                                            AppDecoration.txtOutlineBlack90066,
                                        child: Text(
                                          "eDITAR",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtArtographieMedium7,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCanelita,
                              height: getVerticalSize(
                                90,
                              ),
                              width: getHorizontalSize(
                                89,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  45,
                                ),
                              ),
                              alignment: Alignment.bottomRight,
                              margin: getMargin(
                                right: 39,
                                bottom: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 48,
                        top: 12,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Nombre:",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                            ),
                            child: Text(
                              "Franco",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanMedium20.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 48,
                        top: 6,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "Apellido Paterno:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 13,
                              bottom: 1,
                            ),
                            child: Text(
                              "Pérez",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanMedium20.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 48,
                        top: 4,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "Apellido Materno:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                              bottom: 1,
                            ),
                            child: Text(
                              "Díaz",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanMedium20.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 48,
                          top: 3,
                          right: 47,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Edad:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 13,
                              ),
                              child: Text(
                                "34",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtUrbanistRomanMedium20.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Sexo:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 13,
                              ),
                              child: Text(
                                "M",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtUrbanistRomanMedium20.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 44,
                        top: 17,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Teléfono:",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                            ),
                            child: Text(
                              "5585699855",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanMedium20.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 45,
                          top: 8,
                          right: 42,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "Calle:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 6,
                                bottom: 1,
                              ),
                              child: Text(
                                "Álamo",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtUrbanistRomanMedium20.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "N°:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 10,
                                top: 1,
                              ),
                              child: Text(
                                "212",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtUrbanistRomanMedium20.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 45,
                          top: 4,
                          right: 44,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Municipio:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 7,
                              ),
                              child: Text(
                                "Naucalpan de Juárez",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtUrbanistRomanMedium20.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 45,
                        top: 2,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Colonia:",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                            ),
                            child: Text(
                              "Santa Cruz",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanMedium20.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 46,
                        top: 7,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "C.P.:",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                            ),
                            child: Text(
                              "54077",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanMedium20.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          top: 15,
                          right: 60,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomButton(
                              height: getVerticalSize(
                                31,
                              ),
                              width: getHorizontalSize(
                                93,
                              ),
                              text: "Editar",
                              variant: ButtonVariant.OutlineBlack9003f,
                              shape: ButtonShape.RoundedBorder15,
                              padding: ButtonPadding.PaddingAll6,
                              fontStyle: ButtonFontStyle
                                  .UrbanistRomanSemiBold15Gray900,
                            ),
                            CustomButton(
                              height: getVerticalSize(
                                31,
                              ),
                              width: getHorizontalSize(
                                113,
                              ),
                              text: "Actualizar",
                              margin: getMargin(
                                left: 26,
                              ),
                              variant: ButtonVariant.OutlineBlack9003f,
                              shape: ButtonShape.RoundedBorder15,
                              padding: ButtonPadding.PaddingAll6,
                              fontStyle: ButtonFontStyle
                                  .UrbanistRomanSemiBold15Gray900,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        33,
                      ),
                      width: getHorizontalSize(
                        153,
                      ),
                      text: "Cerrar sesión",
                      margin: getMargin(
                        top: 52,
                      ),
                      variant: ButtonVariant.OutlineBlack9003f_1,
                      shape: ButtonShape.RoundedBorder15,
                      fontStyle:
                          ButtonFontStyle.UrbanistRomanSemiBold15Indigo50,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImgframe,
                      height: getVerticalSize(
                        32,
                      ),
                      width: getHorizontalSize(
                        375,
                      ),
                      margin: getMargin(
                        top: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
