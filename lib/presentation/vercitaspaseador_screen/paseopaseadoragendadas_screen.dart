import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/presentation/paseoduenioagendada_screen/paseoduenioagendada_screen.dart';
import 'package:peek_app/presentation/paseopaseadoragendada_screen/paseopaseadoragendada_screen.dart';
import 'package:peek_app/presentation/perfilduenio_screen/perfilduenio_screen.dart';
//import 'package:peek_app/presentation/vercitasduenio_screen/widgets/vercitas_item_agendado_widget.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';
//import 'package:peek_app/presentation/paseoduenioagendada_screen/paseoduenioagendada_screen.dart';

class PaseopaseadoragendadasScreen extends StatefulWidget {
  const PaseopaseadoragendadasScreen({Key? key}) : super(key: key);

  @override
  State<PaseopaseadoragendadasScreen> createState() =>
      _PaseopaseadoragendadasScreen();
}

//Dueño
String name = ' ';
String lastname = '';
String lastnameone = '';
int phone = 0;

//Mascota
String nombre = ' ';
String tamanio = '';
String raza = '';
double peso = 0.0;
int edad = 0;
bool enfermedades = false;
String sexo = '';
String personalidad = '';

class _PaseopaseadoragendadasScreen
    extends State<PaseopaseadoragendadasScreen> {
  final __paseadoresuid = TextEditingController();

  //El método Dispose limpia todos los objetos,
  @override
  void dispose() {
    __paseadoresuid.dispose();
    super.dispose();
  }

  void initState() {
    //mascotas();
    super.initState();
  }

  //Lugares en lista de string
  List<Map<String, dynamic>> citasList = [];
  late List<Map<String, dynamic>> items = [];

  late var myFuture = getcitas();

//para cada lugar vamos a añadirlo a nuestra lista de lugares para poder hacer display del nombre del lugar en forma de listview
  Future getcitas() async {
    user = FirebaseAuth.instance.currentUser!;
    uid = FirebaseAuth.instance.currentUser!.uid;
    //final uid = user.uid;
    await FirebaseFirestore.instance
        .collection('paseadores')
        .doc(uid)
        .collection("citas")
        .doc("status")
        .collection("agendadas")
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              //print(document.reference.id);
              citasList.add(element.data());
            }));
    setState(() {
      items = citasList;
    });
  }

  Future<void> _handleRefresh() async {
    Navigator.popAndPushNamed(context, AppRoutes.paseopaseadorgendadasScreen);
/*     showDialog(
        context: context,
        builder: (context) {
          return Center(child: CircularProgressIndicator());
        });
    Navigator.of(context).pop(); */
    return await Future.delayed(Duration(seconds: 1));
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
        body: LiquidPullToRefresh(
          onRefresh: _handleRefresh,
          color: Colors.black,
          height: 150,
          backgroundColor: Colors.orange,
          animSpeedFactor: 1,
          //showChildOpacityTransition: false,
          child: Container(
            height: getVerticalSize(
              1168,
            ),
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBackground,
                  height: getVerticalSize(
                    1136,
                  ),
                  width: getHorizontalSize(
                    375,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(top: 20),
                              child: Text("CITAS AGENDADAS",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtArtographieMedium30),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 19,
                                right: 16,
                              ),
                              child: FutureBuilder(
                                future: myFuture,
                                builder: (context, snapshot) {
                                  return ListView.builder(
                                    shrinkWrap: true,
                                    controller: ScrollController(),
                                    itemCount: items.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.all(4),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        PaseopaseadoragendadaScreen(
                                                            citaID: items[index]
                                                                ["ID"],
                                                            paseadorID: items[
                                                                    index]
                                                                ["PaseadorID"],
                                                            duenioID: items[
                                                                    index]
                                                                ["DueñoID"])));
                                          },
                                          child: Container(
                                            padding: getPadding(
                                              top: 13,
                                              bottom: 13,
                                            ),
                                            decoration: AppDecoration
                                                .outlineBlack9003f
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 4,
                                                    right: 10,
                                                    left: 10,
                                                    bottom: 10,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text(
                                                        "Agendado",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtUrbanistRomanMedium15Bluegray400,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgagendado,
                                                          height: getSize(
                                                            75,
                                                          ),
                                                          width: getSize(
                                                            75,
                                                          ),
                                                          margin: getMargin(
                                                            left: 2,
                                                            top: 2,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 9,
                                                    bottom: 20,
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 20,
                                                              bottom: 6,
                                                              left: 0,
                                                              right: 0,
                                                            ),
                                                            child: Text(
                                                              items[index]
                                                                  ["Mascota"],
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtUrbanistRomanBold15,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 10,
                                                              bottom: 6,
                                                              left: 0,
                                                              right: 0,
                                                            ),
                                                            child:
                                                                CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgCanelita,
                                                              height:
                                                                  getVerticalSize(
                                                                27,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                28,
                                                              ),
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                getHorizontalSize(
                                                                  14,
                                                                ),
                                                              ),
                                                              margin: getMargin(
                                                                left: 5,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 6,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                63,
                                                              ),
                                                              child: Text(
                                                                items[index]
                                                                    ["Dueño"],
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold15,
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgduenio,
                                                              height:
                                                                  getVerticalSize(
                                                                29,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                28,
                                                              ),
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                getHorizontalSize(
                                                                  14,
                                                                ),
                                                              ),
                                                              margin: getMargin(
                                                                left: 5,
                                                                top: 8,
                                                                bottom: 4,
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
                                                      left: 15, right: 25),
                                                  child: Container(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Text(
                                                                "Cita:",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold15,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(0.0),
                                                              child: Text(
                                                                "Fecha:",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold15,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              items[index]
                                                                  ["Fecha"],
                                                              maxLines: null,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtUrbanistRomanBold15,
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(5.0),
                                                              child: Text(
                                                                "Hora:",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold15,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              items[index]
                                                                  ["Hora"],
                                                              maxLines: null,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtUrbanistRomanBold15,
                                                            ),
                                                          ],
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
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
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
                            top: 761,
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
    );
  }
}
