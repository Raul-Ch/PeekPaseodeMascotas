import 'widgets/vercitas_item_finalizado_widget.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';

class PaseopaseadorprogresoScreen extends StatelessWidget {
  const PaseopaseadorprogresoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(
                  736,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBackground,
                      height: getVerticalSize(
                        780,
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
                          CustomImageView(
                            imagePath: ImageConstant.imgCanelita,
                            height: getVerticalSize(
                              87,
                            ),
                            width: getHorizontalSize(
                              86,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                43,
                              ),
                            ),
                            alignment: Alignment.center,
                            margin: getMargin(
                              top: 34,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 86,
                              top: 4,
                            ),
                            child: Text(
                              "Paseas con: ¡Canela!",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 14,
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
                                    left: 12,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Si",
                                    overflow: TextOverflow.ellipsis,
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
                          Padding(
                            padding: getPadding(
                              left: 20,
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
                                    left: 12,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "Alegre",
                                    overflow: TextOverflow.ellipsis,
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
                          Padding(
                            padding: getPadding(
                              left: 20,
                              right: 31,
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
                                      259,
                                    ),
                                    margin: getMargin(
                                      left: 7,
                                    ),
                                    child: Text(
                                      "Canela padece diabetes y no puede correr mucho",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanMedium20
                                          .copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 6,
                            ),
                            child: Text(
                              "Dueño:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 2,
                            ),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Nombre: ",
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
                                        text: " ",
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
                                Padding(
                                  padding: getPadding(
                                    left: 13,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: " ",
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
                                          text: "Franco Pérez",
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
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 8,
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
                                    left: 9,
                                  ),
                                  child: Text(
                                    "5585699855",
                                    overflow: TextOverflow.ellipsis,
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
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 13,
                              ),
                              child: Text(
                                "CITA:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtArtographieMedium30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 88,
                              top: 15,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Duración:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanMedium16,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                  ),
                                  child: Text(
                                    "0 horas y 21 min",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 17,
                                top: 18,
                                right: 25,
                              ),
                              child: ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      20,
                                    ),
                                  );
                                },
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return const ListcostoItemWidget();
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Text(
                                "Lugar:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold15,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 7,
                              ),
                              child: Text(
                                "Álamo 212, Naucalpan de Juárez, Santa Cruz",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium15,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                91,
                              ),
                              width: getHorizontalSize(
                                320,
                              ),
                              margin: getMargin(
                                top: 24,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Observaciones:",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold15,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "Se comporto mejor con los demás perros",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanSemiBold15,
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            22,
                                          ),
                                          width: getHorizontalSize(
                                            320,
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
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 3,
                                        top: 57,
                                        right: 3,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomButton(
                                            height: getVerticalSize(
                                              34,
                                            ),
                                            width: getHorizontalSize(
                                              83,
                                            ),
                                            text: "Editar",
                                            variant:
                                                ButtonVariant.OutlineBlack9003f,
                                            shape: ButtonShape.CircleBorder17,
                                            fontStyle: ButtonFontStyle
                                                .UrbanistRomanSemiBold15Gray900,
                                          ),
                                          CustomButton(
                                            height: getVerticalSize(
                                              34,
                                            ),
                                            width: getHorizontalSize(
                                              182,
                                            ),
                                            text: "Terminar recorrido",
                                            variant: ButtonVariant
                                                .OutlineBlack9003f_2,
                                            shape: ButtonShape.CircleBorder17,
                                            fontStyle: ButtonFontStyle
                                                .UrbanistRomanSemiBold15Gray900,
                                          ),
                                        ],
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
              CustomImageView(
                imagePath: ImageConstant.imgImgframe,
                height: getVerticalSize(
                  32,
                ),
                width: getHorizontalSize(
                  375,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
