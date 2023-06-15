import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

bool progreso = false;

class PaseosmenupaseadorScreen extends StatefulWidget {
  const PaseosmenupaseadorScreen({Key? key}) : super(key: key);

  @override
  State<PaseosmenupaseadorScreen> createState() => _PaseosmenupaseadorScreen();
}

sinprogreso(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    onPressed: () {
      //Funcion
      Navigator.pop(context);
    },
    child: const Text("Ok"),
  );

  AlertDialog alert = AlertDialog(
    title: const Text("No tienes un paseo activo"),
    content: const Text(
        textAlign: TextAlign.center,
        "Tenemos registrado que no tienes un paseo activo, si estas seguro de que tienes unosi estas seguro de que tienes uno, accede desde: Ver Citas y da click en Progreso "),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class _PaseosmenupaseadorScreen extends State<PaseosmenupaseadorScreen> {
  late var myFuture = paseando();
  Future paseando() async {
    var user = FirebaseAuth.instance.currentUser!;
    var uid = FirebaseAuth.instance.currentUser!.uid;

    final snapshot = await FirebaseFirestore.instance
        .collection('paseadores')
        .doc(uid)
        .collection("citas")
        .doc("status")
        .collection("progreso")
        .get();

    if (snapshot.size == 0) {
      progreso = false;
    } else {
      progreso = true;
    }
  }

  @override
  void initState() {
    myFuture;
    super.initState();
  }

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
                  Navigator.pop(context);
                  Navigator.pushNamed(context, AppRoutes.comentariosScreen);
                },
              ),
              const SizedBox(
                //Use of SizedBox
                height: 130,
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
                  Navigator.popUntil(
                      context, ModalRoute.withName(AppRoutes.welcomeScreen));
                },
              )
            ],
          ),
        )),
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(
                  734,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          706,
                        ),
                        width: double.maxFinite,
                        decoration: AppDecoration.fillBlack9000c,
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
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 26,
                                  right: 26,
                                  bottom: 83,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "mENÚ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtArtographieMedium40,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPerrob,
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
                                            BorderRadiusStyle.roundedBorder22,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context,
                                              AppRoutes.vercomentariosScreen);
                                        },
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgvercomentarios,
                                              height: getSize(
                                                86,
                                              ),
                                              width: getSize(
                                                86,
                                              ),
                                              margin: getMargin(
                                                bottom: 5,
                                              ),
                                            ),
                                            Container(
                                              width: getHorizontalSize(
                                                200,
                                              ),
                                              margin: getMargin(
                                                left: 4,
                                                top: 3,
                                                bottom: 14,
                                              ),
                                              child: Text(
                                                "Ver  Comentarios",
                                                maxLines: null,
                                                textAlign: TextAlign.right,
                                                style: AppStyle
                                                    .txtMontserratAlternatesSemiBold30,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        top: 26,
                                      ),
                                      padding: getPadding(
                                        left: 11,
                                        top: 6,
                                        right: 11,
                                        bottom: 6,
                                      ),
                                      decoration: AppDecoration
                                          .outlineBlack9003f
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder22,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context,
                                              AppRoutes.vercitaspaseadorScreen);
                                        },
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVercitas,
                                              height: getVerticalSize(
                                                104,
                                              ),
                                              width: getHorizontalSize(
                                                120,
                                              ),
                                              margin: getMargin(
                                                top: 5,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 34,
                                                bottom: 31,
                                                left: 30,
                                              ),
                                              child: Text(
                                                "Ver  Citas",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratAlternatesSemiBold35,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        top: 34,
                                      ),
                                      padding: getPadding(
                                        top: 11,
                                        bottom: 11,
                                      ),
                                      decoration: AppDecoration
                                          .outlineBlack9003f
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder22,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          paseando();
                                          if (progreso == true) {
                                            Navigator.pushNamed(
                                                context,
                                                AppRoutes
                                                    .paseopaseadorprogresoScreen);
                                          } else {
                                            sinprogreso(context);
                                          }
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVerpaseo,
                                              height: getVerticalSize(
                                                94,
                                              ),
                                              width: getHorizontalSize(
                                                180,
                                              ),
                                              margin: getMargin(
                                                bottom: 5,
                                              ),
                                            ),
                                            Container(
                                              width: getHorizontalSize(
                                                112,
                                              ),
                                              margin: getMargin(
                                                top: 7,
                                                bottom: 6,
                                                right: 15,
                                              ),
                                              child: Text(
                                                "Ver \nPaseo",
                                                maxLines: null,
                                                textAlign: TextAlign.right,
                                                style: AppStyle
                                                    .txtMontserratAlternatesSemiBold35,
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
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: getMargin(
                          left: 0,
                          top: 0,
                          bottom: 605,
                        ),
                        padding: getPadding(
                          left: 18,
                          right: 18,
                        ),
                        decoration: AppDecoration.fillLightgreen20002,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPeek299x96,
                              height: getVerticalSize(
                                130,
                              ),
                              width: getHorizontalSize(
                                130,
                              ),
                              margin: getMargin(
                                top: 0,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                right: 1,
                                top: 0,
                                bottom: 10,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: getHorizontalSize(
                                      207,
                                    ),
                                    decoration:
                                        AppDecoration.txtOutlineBlack90066,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: getMargin(
                                            top: 0,
                                            bottom: 0,
                                          ),
                                          child: Text(
                                            "Peek'",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtArtographieMediumscreens,
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            top: 0,
                                          ),
                                          child: Text(
                                            "Paseo de Mascotas",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtArtographieMediumsubscreens,
                                          ),
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
                    CustomImageView(
                        imagePath: ImageConstant.imgframe,
                        height: getVerticalSize(32),
                        width: getHorizontalSize(375),
                        alignment: Alignment.bottomCenter)
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
