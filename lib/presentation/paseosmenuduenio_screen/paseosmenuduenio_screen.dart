import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

class PaseosmenuduenioScreen extends StatelessWidget {
  const PaseosmenuduenioScreen({super.key});

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
                      Navigator.pushNamed(context, AppRoutes.menuDuenioScreen);
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
                      Navigator.pushNamed(
                          context, AppRoutes.perfilduenioScreen);
                    },
                  ),
                  const SizedBox(
                    //Use of SizedBox
                    height: 25,
                  ),
                  //Mascota
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 45),
                    leading: CustomImageView(
                      imagePath: ImageConstant.imgHuellita,
                    ),
                    title: Text(
                      ' Mascota',
                      style: AppStyle.txtUrbanistRomanBold20Indigo50,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(
                          context, AppRoutes.perfilmascotaScreen);
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
                          context, AppRoutes.paseosmenuduenioScreen);
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
                      Navigator.pop(context);
                      Navigator.pushNamed(context, AppRoutes.comentariosScreen);
                    },
                  ),
                  const SizedBox(
                    //Use of SizedBox
                    height: 100,
                  ),
                  //Mascota
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 120),
                    leading: CustomImageView(
                      imagePath: ImageConstant.imgMaskgroup39x39,
                    ),
                    title: Text(
                      'Cerrar Sesión',
                      style: AppStyle.txtUrbanistRomanBold25Lightgreen20001,
                    ),
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.popUntil(context,
                          ModalRoute.withName(AppRoutes.welcomeScreen));
                    },
                  )
                ],
              ),
            )),
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                height: getVerticalSize(758),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgBlackground,
                      height: getVerticalSize(738),
                      width: getHorizontalSize(375),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: getVerticalSize(738),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgBackground,
                                    height: getVerticalSize(
                                      706,
                                    ),
                                    width: getHorizontalSize(
                                      375,
                                    ),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            top: 130,
                                            left: 26,
                                            right: 26,
                                            bottom: 83),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "mENÚ",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtArtographieMedium40,
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgPerrob,
                                                    height: getVerticalSize(
                                                      34,
                                                    ),
                                                    width: getHorizontalSize(
                                                      38,
                                                    ),
                                                    margin: getMargin(
                                                      left: 19,
                                                      top: 10,
                                                      bottom: 2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                  margin: getMargin(
                                                    top: 22,
                                                  ),
                                                  padding: getPadding(
                                                    left: 13,
                                                    top: 15,
                                                    right: 13,
                                                    bottom: 15,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlineBlack9003f
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder22,
                                                  ),
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          AppRoutes
                                                              .buscarpaseadorScreen);
                                                    },
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgbuscpas,
                                                            height:
                                                                getVerticalSize(
                                                                    86),
                                                            width:
                                                                getHorizontalSize(
                                                                    135),
                                                            margin: getMargin(
                                                              bottom: 5,
                                                            ),
                                                          ),
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      148),
                                                              margin: getMargin(
                                                                  top: 7,
                                                                  left: 10,
                                                                  bottom: 6,
                                                                  right: 0),
                                                              child: Text(
                                                                  "Buscar \nPaseador",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style: AppStyle
                                                                      .txtMontserratAlternatesSemiBold35))
                                                        ]),
                                                  )),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context,
                                                      AppRoutes
                                                          .vercitasduenioScreen);
                                                },
                                                child: Container(
                                                    margin: getMargin(
                                                        top: 25, right: 1),
                                                    padding: getPadding(
                                                        left: 11,
                                                        top: 6,
                                                        right: 11,
                                                        bottom: 6),
                                                    decoration: AppDecoration
                                                        .outlineBlack9003f
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder22),
                                                    child: Row(children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVercitas,
                                                          height:
                                                              getVerticalSize(
                                                                  104),
                                                          width:
                                                              getHorizontalSize(
                                                                  120),
                                                          margin: getMargin(
                                                              top: 5)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 34,
                                                              left: 25,
                                                              bottom: 31),
                                                          child: Text(
                                                              "Ver  Citas",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratAlternatesSemiBold35))
                                                    ])),
                                              ),
                                              Container(
                                                  margin: getMargin(
                                                      top: 34, right: 1),
                                                  padding: getPadding(
                                                      top: 11, bottom: 11),
                                                  decoration: AppDecoration
                                                      .outlineBlack9003f
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder22),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgVerpaseo,
                                                            height:
                                                                getVerticalSize(
                                                                    94),
                                                            width:
                                                                getHorizontalSize(
                                                                    180),
                                                            margin: getMargin(
                                                                bottom: 5)),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    112),
                                                            margin: getMargin(
                                                                top: 7,
                                                                bottom: 6,
                                                                right: 15),
                                                            child: Text(
                                                                "Ver \nPaseo",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style: AppStyle
                                                                    .txtMontserratAlternatesSemiBold35))
                                                      ]))
                                            ]))),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    margin: getMargin(
                                      left: 0,
                                      top: 0,
                                      bottom: 624,
                                    ),
                                    padding: getPadding(
                                      left: 18,
                                      right: 18,
                                    ),
                                    decoration:
                                        AppDecoration.fillLightgreen20002,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgPeek299x96,
                                          height: getVerticalSize(
                                            100,
                                          ),
                                          width: getHorizontalSize(
                                            98,
                                          ),
                                          margin: getMargin(
                                            top: 12,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            right: 1,
                                            bottom: 10,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: getHorizontalSize(
                                                  207,
                                                ),
                                                decoration: AppDecoration
                                                    .txtOutlineBlack90066,
                                                child: Text(
                                                  "Peek ",
                                                  maxLines: null,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtArtographieMedium25,
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  top: 5,
                                                ),
                                                decoration: AppDecoration
                                                    .txtOutlineBlack90066,
                                                child: Text(
                                                  " Paseo de Mascotas",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtArtographieMedium25,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgframe,
                      height: getVerticalSize(32),
                      width: getHorizontalSize(375),
                      alignment: Alignment.bottomCenter)
                ]))));
  }

  onTapButtonbuscarpas(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.buscarpaseadorScreen);
  }
}
