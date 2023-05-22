import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';

class MenuDuenioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 35,
          elevation: 0,
          flexibleSpace: Image(
            image: AssetImage('assets/images/frame.png'),
            fit: BoxFit.fill,
          ),
        ),
        drawer: Drawer(),
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: getVerticalSize(
            812,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBackground,
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
              CustomImageView(
                imagePath: ImageConstant.imgBlackground,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
/*                     CustomImageView(
                      imagePath: ImageConstant.imgframe,
                      height: getVerticalSize(
                        32,
                      ),
                      width: getHorizontalSize(
                        375,
                      ),
                    ), */
                    Container(
                      width: double.maxFinite,
                      padding: getPadding(
                        left: 7,
                        top: 0,
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
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              221,
                            ),
                            margin: getMargin(
                              left: 12,
                              top: 30,
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
                    Spacer(
                        //flex: 4,
                        ),
                    CustomButton(
                      height: getVerticalSize(
                        67,
                      ),
                      text: "Mi perfil",
                      margin: getMargin(
                        left: 30,
                        right: 28,
                      ),
                      variant: ButtonVariant.OutlineBlack9003f,
                      shape: ButtonShape.RoundedBorder30,
                      padding: ButtonPadding.PaddingAll19,
                      fontStyle: ButtonFontStyle.UrbanistRomanSemiBold25,
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        67,
                      ),
                      text: "Agendar paseo",
                      margin: getMargin(
                        left: 33,
                        top: 23,
                        right: 25,
                      ),
                      variant: ButtonVariant.OutlineBlack9003f_1,
                      shape: ButtonShape.RoundedBorder30,
                      padding: ButtonPadding.PaddingAll19,
                      fontStyle:
                          ButtonFontStyle.UrbanistRomanSemiBold25WhiteA700,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgframe,
                      height: getVerticalSize(
                        32,
                      ),
                      width: getHorizontalSize(
                        375,
                      ),
                      margin: getMargin(
                        top: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getVerticalSize(
                    407,
                  ),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: getPadding(
                            left: 65,
                            top: 80,
                            right: 65,
                            bottom: 63,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder74,
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgUltimospaseos,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  139,
                                ),
                                margin: getMargin(
                                  top: 22,
                                ),
                                child: Text(
                                  "Tús\núltimos  paseos:",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtUrbanistRomanBold20,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 11,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Paseador",
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            18,
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
                                            18,
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
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    top: 4,
                                    right: 16,
                                  ),
                                  child: Text(
                                    "Juan Gutiérrez Calderón",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanMedium18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 6,
                                  top: 21,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Calificación",
                                                style: TextStyle(
                                                  color: ColorConstant.gray900,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ": ",
                                                style: TextStyle(
                                                  color: ColorConstant
                                                      .blueGray40001,
                                                  fontSize: getFontSize(
                                                    16,
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
                                            top: 3,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                svgPath: ImageConstant.imgStar1,
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
                                                svgPath: ImageConstant.imgStar2,
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
                                                svgPath: ImageConstant.imgStar4,
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
                                                svgPath: ImageConstant.imgStar3,
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
                                      ],
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                        bottom: 2,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Tiempo recorrido",
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
                                                    fontSize: getFontSize(
                                                      16,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ":",
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .blueGray40001,
                                                    fontSize: getFontSize(
                                                      16,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "1 hora y 30 min ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium16Gray900,
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
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: getVerticalSize(
                            151,
                          ),
                          width: getHorizontalSize(
                            131,
                          ),
                          margin: getMargin(
                            top: 51,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    130,
                                  ),
                                  width: getHorizontalSize(
                                    110,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        75,
                                      ),
                                    ),
                                    border: Border.all(
                                      color: ColorConstant.black9007f,
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.black9007f,
                                        spreadRadius: getHorizontalSize(
                                          2,
                                        ),
                                        blurRadius: getHorizontalSize(
                                          2,
                                        ),
                                        offset: Offset(
                                          0,
                                          4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: getPadding(
                                    left: 26,
                                    right: 28,
                                    bottom: 12,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          right: 1,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Mascota",
                                                style: TextStyle(
                                                  color: ColorConstant.gray900,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ":",
                                                style: TextStyle(
                                                  color: ColorConstant
                                                      .blueGray40001,
                                                  fontSize: getFontSize(
                                                    16,
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
                                      Container(
                                        height: getVerticalSize(
                                          94,
                                        ),
                                        width: getHorizontalSize(
                                          77,
                                        ),
                                        margin: getMargin(
                                          top: 3,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgCanelita,
                                              height: getVerticalSize(
                                                74,
                                              ),
                                              width: getHorizontalSize(
                                                77,
                                              ),
                                              radius: BorderRadius.circular(
                                                getHorizontalSize(
                                                  38,
                                                ),
                                              ),
                                              alignment: Alignment.bottomCenter,
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: getPadding(
                                                  right: 7,
                                                ),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: " ",
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .blueGray40001,
                                                          fontSize: getFontSize(
                                                            16,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: "Canela",
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize: getFontSize(
                                                            16,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  textAlign: TextAlign.left,
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
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: getVerticalSize(
                            126,
                          ),
                          width: getHorizontalSize(
                            116,
                          ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    126,
                                  ),
                                  width: getHorizontalSize(
                                    116,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        63,
                                      ),
                                    ),
                                    border: Border.all(
                                      color: ColorConstant.black9007f,
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.black9007f,
                                        spreadRadius: getHorizontalSize(
                                          2,
                                        ),
                                        blurRadius: getHorizontalSize(
                                          2,
                                        ),
                                        offset: Offset(
                                          0,
                                          4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: getPadding(
                                    left: 15,
                                    right: 14,
                                    top: 5,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(
                                          86,
                                        ),
                                        child: Text(
                                          "¡Bienvenido de vuelta",
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style:
                                              AppStyle.txtUrbanistRomanBlack16,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 3,
                                        ),
                                        child: Text(
                                          "Franco!",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBlack16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: getVerticalSize(
                            151,
                          ),
                          width: getHorizontalSize(
                            131,
                          ),
                          margin: getMargin(
                            left: 6,
                            top: 51,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    130,
                                  ),
                                  width: getHorizontalSize(
                                    110,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        75,
                                      ),
                                    ),
                                    border: Border.all(
                                      color: ColorConstant.black9007f,
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.black9007f,
                                        spreadRadius: getHorizontalSize(
                                          2,
                                        ),
                                        blurRadius: getHorizontalSize(
                                          2,
                                        ),
                                        offset: Offset(
                                          0,
                                          4,
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
                                    left: 22,
                                    right: 25,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Observaciones",
                                              style: TextStyle(
                                                color: ColorConstant.gray900,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ": \n",
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray40001,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          74,
                                        ),
                                        margin: getMargin(
                                          top: 10,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " ",
                                                style: TextStyle(
                                                  color: ColorConstant
                                                      .blueGray40001,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Se comporto mejor con los demás perros",
                                                style: TextStyle(
                                                  color: ColorConstant.gray900,
                                                  fontSize: getFontSize(
                                                    12,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
