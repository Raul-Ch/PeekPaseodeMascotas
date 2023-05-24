import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';

class MenuPaseadorScreen extends StatelessWidget {
  const MenuPaseadorScreen({super.key});

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
        drawer: Drawer(
            child: Container(
          color: const Color.fromARGB(255, 30, 35, 44),
          child: ListView(
            controller: ScrollController(),
            children: [
              DrawerHeader(
                  child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.imgPeek4,
                ),
              )),
              const SizedBox(
                //Use of SizedBox
                height: 10,
              ),
              //Home
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 45),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgCasa,
                ),
                title: Text(
                  '  Menu Principal',
                  style: AppStyle.txtUrbanistRomanBold20Indigo50,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, AppRoutes.menuPaseadorScreen);
                },
              ),
              const SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              //Perfil
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 48),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgUsuario,
                ),
                title: Text(
                  '   Perfil',
                  style: AppStyle.txtUrbanistRomanBold20Indigo50,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, AppRoutes.perfilpaseadorScreen);
                },
              ),
              const SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              //Paseos
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 45),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgPerro,
                ),
                title: Text(
                  '  Paseos',
                  style: AppStyle.txtUrbanistRomanBold20Indigo50,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(
                      context, AppRoutes.paseosmenupaseadorScreen);
                },
              ),
              const SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              //Comentarios
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgMaskgroup,
                ),
                title: Text(
                  ' Comentarios',
                  style: AppStyle.txtUrbanistRomanBold20Indigo50,
                ),
                onTap: () {
                  //Navigator.pop(context);
                  Navigator.pushNamed(context, AppRoutes.comentariosScreen);
                },
              ),
              const SizedBox(
                //Use of SizedBox
                height: 130,
              ),
              //Mascota
              ListTile(
                contentPadding: const EdgeInsets.only(left: 150),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgMaskgroup39x39,
                ),
                title: Text(
                  'Cerrar Sesión',
                  style: AppStyle.txtUrbanistRomanBold25Lightgreen20001,
                ),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.popUntil(
                      context, ModalRoute.withName(AppRoutes.welcomeScreen));
                },
              )
            ],
          ),
        )),
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
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
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                                  child: SizedBox(
                                    height: getVerticalSize(
                                      32,
                                    ),
                                    width: getHorizontalSize(
                                      34,
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
                    const Spacer(),
                    CustomButton(
                      height: getVerticalSize(
                        67,
                      ),
                      text: "Mi perfil",
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(
                            context, AppRoutes.perfilpaseadorScreen);
                      },
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
                      text: "Ver Citas",
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
                child: SizedBox(
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
                            left: 69,
                            top: 57,
                            right: 69,
                            bottom: 57,
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  139,
                                ),
                                margin: getMargin(
                                  top: 29,
                                ),
                                child: Text(
                                  "Tús\núltimos  paseos:",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtUrbanistRomanBold20,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  193,
                                ),
                                margin: getMargin(
                                  left: 21,
                                  top: 10,
                                  right: 19,
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
                                        text: ": \nJuan Gutiérrez Calderón",
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
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 2,
                                  top: 21,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 6,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Calificación",
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
                                                  svgPath: ImageConstant
                                                      .imgStar118x16,
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
                                                  svgPath: ImageConstant
                                                      .imgStar218x16,
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
                                                  svgPath: ImageConstant
                                                      .imgStar418x16,
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
                                                  svgPath: ImageConstant
                                                      .imgStar318x16,
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
                                                  svgPath:
                                                      ImageConstant.imgPlay,
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
                                    ),
                                    SizedBox(
                                      width: getHorizontalSize(
                                        127,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Tiempo recorrido",
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
                                              text: ": \n",
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray40001,
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "1 hora y 30 min ",
                                              style: TextStyle(
                                                color: ColorConstant.gray900,
                                                fontSize: getFontSize(
                                                  16,
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
                                        offset: const Offset(
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
                                child: Container(
                                  height: getVerticalSize(
                                    117,
                                  ),
                                  width: getHorizontalSize(
                                    77,
                                  ),
                                  margin: getMargin(
                                    bottom: 12,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          width: getHorizontalSize(
                                            65,
                                          ),
                                          margin: getMargin(
                                            right: 1,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Mascota",
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
                                                TextSpan(
                                                  text: "Canela",
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
                                                    fontSize: getFontSize(
                                                      16,
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
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgCanelita,
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
                        child: SizedBox(
                          height: getVerticalSize(
                            126,
                          ),
                          width: getHorizontalSize(
                            116,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
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
                                        offset: const Offset(
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
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    86,
                                  ),
                                  child: Text(
                                    "¡Bienvenido de vuelta Juan!",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtUrbanistRomanBlack16,
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
                            left: 1,
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
                                        offset: const Offset(
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
