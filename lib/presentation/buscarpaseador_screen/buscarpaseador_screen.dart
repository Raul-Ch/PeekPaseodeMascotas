import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/presentation/perfilpaseadorcitas_screen/perfilpaseadorcitas_screen.dart';

class BuscarpaseadorScreen extends StatefulWidget {
  const BuscarpaseadorScreen({Key? key}) : super(key: key);

  @override
  State<BuscarpaseadorScreen> createState() => _BuscarpaseadorScreen();
}

class _BuscarpaseadorScreen extends State<BuscarpaseadorScreen> {
  final __paseadoresuid = TextEditingController();

  int tarifa = 0;
  String exp = ' ';
  String name = ' ';
  String lastname = '';
  String lastnameone = '';
  String date = '';
  //String gender = '';
  int phone = 0;
  int cp = 0;
  int numstreet = 0;
  String street = '';
  String mun = '';
  String city = '';
  String correo = '';

  //El método Dispose limpia todos los objetos,
  @override
  void dispose() {
    __paseadoresuid.dispose();
    super.dispose();
  }

  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //Lugares en lista de string
  List<Map<String, dynamic>> paseadoresList = [];
  late List<Map<String, dynamic>> items = [];

  late var myFuture = getPaseadores();

//para cada lugar vamos a añadirlo a nuestra lista de lugares para poder hacer display del nombre del lugar en forma de listview
  Future getPaseadores() async {
    //final uid = user.uid;
    await FirebaseFirestore.instance
        .collection('paseadores')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              //print(document.reference.id);
              paseadoresList.add(element.data());
            }));
    setState(() {
      items = paseadoresList;
    });
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
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: getVerticalSize(1366),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgBackground,
                  height: getVerticalSize(1210),
                  width: getHorizontalSize(375),
                  alignment: Alignment.topCenter,
                  margin: getMargin(top: 32)),
              Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Padding(
                      padding: getPadding(bottom: 463),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: getMargin(top: 20, right: 2),
                            padding: getPadding(left: 7, right: 7),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Paseadores Cercanos",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtArtographieMedium30),
                                Container(
                                  height: getVerticalSize(498),
                                  width: getHorizontalSize(359),
                                  margin: getMargin(top: 14),
                                  child: FutureBuilder(
                                    future: myFuture,
                                    builder: (context, snapshot) {
                                      return ListView.builder(
                                        shrinkWrap: true,
                                        controller: ScrollController(),
                                        itemCount: items.length,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ListTile(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PerfilpaseadorcitasScreen(
                                                                  paseadoresList:
                                                                      items[index]
                                                                          [
                                                                          "ID"])));
                                                },
                                                shape: RoundedRectangleBorder(
                                                    side: const BorderSide(
                                                        color: Colors.grey,
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                title: Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPaseador,
                                                      height:
                                                          getVerticalSize(74),
                                                      width:
                                                          getHorizontalSize(72),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  38)),
                                                      margin:
                                                          getMargin(bottom: 3)),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 5,
                                                      top: 2,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    81),
                                                            margin: getMargin(
                                                                left: 2),
                                                            child: Text(
                                                                items[index][
                                                                        "Nombre"] +
                                                                    " " +
                                                                    items[index]
                                                                        [
                                                                        "Apellido Paterno"],
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold18)),
                                                        Row(children: [
                                                          Padding(
                                                            padding: getPadding(
                                                                left: 2),
                                                            child: Text(
                                                                "Tarifa: \$" +
                                                                    items[index]
                                                                            [
                                                                            "Tarifa"]
                                                                        .toString(),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold18),
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                              "Tel.: " +
                                                                  items[index][
                                                                          "Telefono"]
                                                                      .toString(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtUrbanistRomanMedium18),
                                                        ]),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2,
                                                                top: 5,
                                                                right: 39),
                                                            child: Row(
                                                                children: [
                                                                  Text(
                                                                      "Experiencia:",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtUrbanistRomanMedium18),
                                                                  SizedBox(
                                                                    width: 105,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                11,
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            items[index][
                                                                                "Experiencia"],
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtUrbanistRomanMedium15)),
                                                                  )
                                                                ]))
                                                      ],
                                                    ),
                                                  ),
                                                ]),
                                              ));
                                        },
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
 /*
 child: FutureBuilder(
                future: myFuture,
                builder: (context, snapshot) {
                  return ListView.builder(
                    shrinkWrap: true,
                    controller: ScrollController(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            title: Row(children: [
                              SizedBox(width: 40),
                              Text(items[index]["Nombre"]),
                              SizedBox(width: 5),
                              Text(items[index]["Apellido Paterno"]),
                              SizedBox(width: 10),
                              Text(items[index]["Apellido Materno"]),
                              SizedBox(width: 50),
                              Text("\$ "),
                              Text(items[index]["Tarifa"].toString()),
                              Text(" MXN"),
                            ]),
                          ));
                    },
                  );
                },
              ),
 */

/*
 children: [
                                                            Text(items[index]
                                                                ["Nombre"]),
                                                            SizedBox(width: 5),
                                                            Text(items[index][
                                                                "Apellido Paterno"]),
                                                            SizedBox(width: 10),
                                                            Text(items[index][
                                                                "Apellido Materno"]),
                                                            SizedBox(width: 50),
                                                            Text("\$ "),
                                                            Text(items[index]
                                                                    ["Tarifa"]
                                                                .toString()),
                                                            Text(" MXN"),
                                                          ],
*/