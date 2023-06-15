import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

class VercitasduenioScreen extends StatefulWidget {
  const VercitasduenioScreen({Key? key}) : super(key: key);

  @override
  State<VercitasduenioScreen> createState() => _VercitasduenioScreen();
}

bool progreso = false;

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
        "Tenemos registrado que no tienes un paseo activo, si estas seguro de que tienes uno, vuelve a cargar esta pagina retrocediendo y accesando otra vez"),
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

class _VercitasduenioScreen extends State<VercitasduenioScreen> {
  late var myFuture = paseando();
  Future paseando() async {
    var user = FirebaseAuth.instance.currentUser!;
    var uid = FirebaseAuth.instance.currentUser!.uid;

    final snapshot = await FirebaseFirestore.instance
        .collection('duenios')
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
    paseando();
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
        body: SizedBox(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgBackground,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 25,
                          ),
                          child: Text(
                            "CITAS:",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtArtographieMedium30,
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 7,
                            top: 27,
                            right: 7,
                          ),
                          padding: getPadding(
                            top: 13,
                            bottom: 13,
                          ),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: InkWell(
                            onTap: () {
                              paseando();
                              if (progreso == true) {
                                Navigator.pushNamed(context,
                                    AppRoutes.paseoduenioprogresoScreen);
                              } else {
                                sinprogreso(context);
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgprogreso,
                                  height: getSize(
                                    76,
                                  ),
                                  width: getSize(
                                    76,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 20,
                                    bottom: 12,
                                  ),
                                  child: Text(
                                    "En progreso",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 7,
                            top: 65,
                            right: 7,
                          ),
                          padding: getPadding(
                            top: 13,
                            bottom: 13,
                          ),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  AppRoutes.paseoduenioagendadasScreen);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgagendado,
                                  height: getSize(
                                    76,
                                  ),
                                  width: getSize(
                                    76,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 20,
                                    bottom: 12,
                                  ),
                                  child: Text(
                                    "Agendadas",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistRomanBold35Teal900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 6,
                            top: 65,
                            right: 6,
                            bottom: 208,
                          ),
                          padding: getPadding(
                            left: 15,
                            top: 13,
                            right: 15,
                            bottom: 13,
                          ),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  AppRoutes.paseoduenioterminadasScreen);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgbandera,
                                  height: getVerticalSize(
                                    76,
                                  ),
                                  width: getHorizontalSize(
                                    76,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 20,
                                    bottom: 12,
                                  ),
                                  child: Text(
                                    "Terminadas",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistRomanBold35OrangeA200,
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
              ),
              CustomImageView(
                imagePath: ImageConstant.imgframe,
                height: getVerticalSize(
                  32,
                ),
                width: getHorizontalSize(
                  375,
                ),
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
