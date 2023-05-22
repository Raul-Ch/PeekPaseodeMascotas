import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';

class PefilpaseadorScreen extends StatelessWidget {
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
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 45,
                          top: 28,
                          right: 36,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 4,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "¡Tú!",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPaseador,
                                    height: getVerticalSize(
                                      141,
                                    ),
                                    width: getHorizontalSize(
                                      125,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        70,
                                      ),
                                    ),
                                    margin: getMargin(
                                      top: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 32,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      right: 9,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Calificación",
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                20,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ": ",
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                20,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      right: 15,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgStar118x16,
                                          height: getVerticalSize(
                                            18,
                                          ),
                                          width: getHorizontalSize(
                                            16,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgStar218x16,
                                          height: getVerticalSize(
                                            18,
                                          ),
                                          width: getHorizontalSize(
                                            16,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                          margin: getMargin(
                                            left: 3,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgStar418x16,
                                          height: getVerticalSize(
                                            18,
                                          ),
                                          width: getHorizontalSize(
                                            16,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                          margin: getMargin(
                                            left: 3,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgStar318x16,
                                          height: getVerticalSize(
                                            18,
                                          ),
                                          width: getHorizontalSize(
                                            16,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                          margin: getMargin(
                                            left: 3,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgPlay,
                                          height: getVerticalSize(
                                            16,
                                          ),
                                          width: getHorizontalSize(
                                            15,
                                          ),
                                          margin: getMargin(
                                            left: 3,
                                            bottom: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 7,
                                      right: 8,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Tarifa:",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold20,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 10,
                                          ),
                                          child: Text(
                                            "180",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium20
                                                .copyWith(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 7,
                                      right: 8,
                                    ),
                                    child: Text(
                                      "Experiencia:",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold20,
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      136,
                                    ),
                                    margin: getMargin(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "4 Años y dueño de 2 perros",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanMedium20
                                          .copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 45,
                        top: 13,
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
                              "Juan",
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
                        left: 45,
                        top: 5,
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
                              "Gutiérrez",
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
                        left: 45,
                        top: 3,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 2,
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
                              bottom: 2,
                            ),
                            child: Text(
                              "Calderón",
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
                          top: 3,
                          right: 50,
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
                                "27",
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
                        left: 41,
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
                              "5590213349",
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
                          left: 42,
                          top: 9,
                          right: 49,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Calle:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 6,
                              ),
                              child: Text(
                                "Tetela",
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
                              "N°:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 10,
                              ),
                              child: Text(
                                "20",
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
                          left: 42,
                          top: 4,
                          right: 47,
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
                        left: 42,
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
                        left: 43,
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
                              "54078",
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
                          top: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                        top: 53,
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
                        top: 10,
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
