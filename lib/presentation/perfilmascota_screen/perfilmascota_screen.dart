import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';

class PefilmascotaScreen extends StatelessWidget {
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
                        top: 3,
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
                        left: 31,
                        top: 22,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 41,
                            width: 41,
                            margin: getMargin(
                              top: 10,
                              bottom: 137,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              188,
                            ),
                            width: getHorizontalSize(
                              203,
                            ),
                            margin: getMargin(
                              left: 18,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: getPadding(
                                      right: 4,
                                    ),
                                    child: Text(
                                      "¡Canela!",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold50,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgCanelita,
                                  height: getVerticalSize(
                                    131,
                                  ),
                                  width: getHorizontalSize(
                                    130,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      65,
                                    ),
                                  ),
                                  alignment: Alignment.bottomLeft,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: getVerticalSize(
                                      59,
                                    ),
                                    width: getHorizontalSize(
                                      63,
                                    ),
                                    margin: getMargin(
                                      bottom: 36,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgHuellita,
                                          height: getVerticalSize(
                                            59,
                                          ),
                                          width: getHorizontalSize(
                                            63,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            margin: getMargin(
                                              bottom: 4,
                                            ),
                                            decoration: AppDecoration
                                                .txtOutlineBlack90066,
                                            child: Text(
                                              "AÑADIR",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtArtographieMedium10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
                        left: 32,
                        top: 14,
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
                              "Canela",
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
                        left: 32,
                        top: 6,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Tamaño:",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 14,
                            ),
                            child: Text(
                              "Mediano",
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
                        left: 32,
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Raza:",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "Maltés",
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
                        left: 32,
                        top: 6,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 2,
                            ),
                            child: Text(
                              "Peso:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 19,
                              top: 2,
                            ),
                            child: Text(
                              "7.5 Kg",
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
                        left: 32,
                        top: 3,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 2,
                            ),
                            child: Text(
                              "Edad:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 13,
                              top: 2,
                            ),
                            child: Text(
                              "4 años y 3 meses",
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
                        left: 32,
                        top: 7,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Sexo:",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                            ),
                            child: Text(
                              "F",
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
                        left: 32,
                        top: 9,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "Enfermedades / Alergias:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                              bottom: 1,
                            ),
                            child: Text(
                              "Si",
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
                        left: 32,
                        top: 7,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 2,
                            ),
                            child: Text(
                              "Personalidad:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              top: 2,
                            ),
                            child: Text(
                              "Alegre",
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
                        left: 32,
                        top: 3,
                        right: 50,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 34,
                            ),
                            child: Text(
                              "Notas:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: getHorizontalSize(
                                232,
                              ),
                              margin: getMargin(
                                left: 3,
                              ),
                              child: Text(
                                "Canela padece diabetes y no puede correr mucho",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtUrbanistRomanMedium20.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
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
                          left: 50,
                          top: 9,
                          right: 50,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    CustomImageView(
                      imagePath: ImageConstant.imgImgframe,
                      height: getVerticalSize(
                        32,
                      ),
                      width: getHorizontalSize(
                        375,
                      ),
                      margin: getMargin(
                        top: 54,
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
