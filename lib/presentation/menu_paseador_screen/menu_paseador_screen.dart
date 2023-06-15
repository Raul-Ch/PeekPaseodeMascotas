import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';

class MenuPaseadorScreen extends StatefulWidget {
  const MenuPaseadorScreen({Key? key}) : super(key: key);

  @override
  State<MenuPaseadorScreen> createState() => _MenuPaseadorScreen();
}

class _MenuPaseadorScreen extends State<MenuPaseadorScreen> {
  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }

//Citas
  String pet = '';
  String date = '';
  String time = '';
  String duenio = ' ';
  int numstreet = 0;
  String street = '';
  String mun = '';
  String city = '';
  String pname = '';
  String dname = '';
  String pid = '';
  String did = '';
  String id = '';

  String IDcita = '';
  TimeOfDay timenow = TimeOfDay.now();
  String itime = '';
  String obs = '';
  String ftime = '';

  List<Map<String, dynamic>> citasList = [];
  late List<Map<String, dynamic>> items = [];

  String observaciones = '';

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
  String nota = '';
  String costo = "";
  String duracion = '';

  late var myFuture2 = getCollection();
  late var myFuture4 = getduenios();

  Future getCollection() async {
    try {
      var user = FirebaseAuth.instance.currentUser!;
      var uid = FirebaseAuth.instance.currentUser!.uid;
      //final uid = user.uid;
      await FirebaseFirestore.instance
          .collection('paseadores')
          .doc(uid)
          .collection("citas")
          .doc("status")
          .collection("progreso")
          .get()
          .then((snapshot) => snapshot.docs.forEach((element) {
                //print(document.reference.id);
                citasList.add(element.data());
              }));
      setState(() {
        items = citasList;

        IDcita = items[0]["ID"];
        pet = items[0]["Mascota"];
        date = items[0]["Fecha"];
        time = items[0]["Hora"];
        street = items[0]["Calle"];
        numstreet = items[0]["Num Calle"];
        mun = items[0]["Municipio"];
        city = items[0]["Ciudad"];
        pname = items[0]["Paseador"];
        pid = items[0]["PaseadorID"];
        dname = items[0]["Dueño"];
        did = items[0]["DueñoID"];

        itime = items[0]["Inicio"];
        obs = items[0]["Observaciones"];
        ftime = items[0]["Termino"];
        myFuture4;
      });

      //return IDcita;
    } catch (error) {
      print(error);
      //return null;
    }
  }

  Future getduenios() async {
    FirebaseFirestore.instance
        .collection("duenios")
        .doc(did)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;
        var Nombre = data?['Nombre'];
        var Apellido = data?['Apellido Paterno'];
        var Telefono = data?['Telefono'];
        //var GCorreo = data?['Email'];
        print('Document data: ${documentSnapshot.data()}');
        //Set the relevant data to variables as needed
        //print(Nombre1);
        setState(() {
          duenio = Nombre;
          lastname = Apellido;
          phone = Telefono;

          //correo = GCorreo;
          //_appBarTitle = Nombre + " " + ApellidoP + " " + ApellidoM;
        });
      } else {
        print("Document does not exist on the database uid:  $did");
      }
    });
  }

  Future<void> _handleRefresh() async {
    Navigator.popAndPushNamed(context, AppRoutes.menuPaseadorScreen);
    return await Future.delayed(const Duration(seconds: 1));
  }

  @override
  void initState() {
    myFuture2;

    super.initState();
  }

  String durationToString(int minutes) {
    var d = Duration(minutes: minutes);
    List<String> parts = d.toString().split(':');
    return '${parts[0].padLeft(2, '0')}:${parts[1].padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    TimeOfDay timenow = TimeOfDay.now();
    String timenow2 =
        '${timenow.hour.toString().padLeft(2, '0')}:${timenow.minute.toString().padLeft(2, '0')}';
    try {
      var format = DateFormat("HH:mm");
      var one = format.parse(timenow2);
      var two = format.parse(itime);
      print(one);
      print(two);
      final diffMn = one.difference(two).inMinutes;
      print(diffMn);
      duracion = durationToString(diffMn);
    } on Exception {
      costo = "Cargando";
    }
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
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
                    Navigator.pushNamed(
                        context, AppRoutes.perfilpaseadorScreen);
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
          body: LiquidPullToRefresh(
            onRefresh: _handleRefresh,
            color: Colors.black,
            height: 150,
            backgroundColor: Color.fromARGB(255, 214, 223, 151),
            animSpeedFactor: 1,
            child: SizedBox(
              height: (MediaQuery.of(context).size.height),
              width: double.maxFinite,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Stack(
                    alignment: Alignment.center,
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
                        child: Container(
                          height: (MediaQuery.of(context).size.height),
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
                                        100,
                                      ),
                                      width: getHorizontalSize(
                                        113,
                                      ),
                                      margin: getMargin(
                                        top: 6,
                                        bottom: 5,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgPeek299x96,
                                            height: getVerticalSize(
                                              160,
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
                                        top: 0,
                                        bottom: 5,
                                      ),
                                      decoration:
                                          AppDecoration.txtOutlineBlack90066,
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
                                fontStyle:
                                    ButtonFontStyle.UrbanistRomanSemiBold25,
                              ),
                              CustomButton(
                                onTap: () {
                                  Navigator.pushNamed(context,
                                      AppRoutes.vercitaspaseadorScreen);
                                },
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
                                fontStyle: ButtonFontStyle
                                    .UrbanistRomanSemiBold25WhiteA700,
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
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: getVerticalSize(
                            480,
                          ),
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: getPadding(
                                    left: 65,
                                    top: 80,
                                    right: 65,
                                    bottom: 63,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder74,
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
                                          style:
                                              AppStyle.txtUrbanistRomanBold20,
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
                                                text: "Dueño:\n",
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
                                                text: dname +
                                                    " " +
                                                    lastname +
                                                    " ",
                                                style: TextStyle(
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                            color: ColorConstant
                                                                .gray900,
                                                            fontSize:
                                                                getFontSize(
                                                              16,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ": ",
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .blueGray40001,
                                                            fontSize:
                                                                getFontSize(
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
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 3,
                                                    ),
                                                    /*  child: Row(
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
                                                          radius:
                                                              BorderRadius.circular(
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
                                                          radius:
                                                              BorderRadius.circular(
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
                                                          radius:
                                                              BorderRadius.circular(
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
                                                          radius:
                                                              BorderRadius.circular(
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
                                                    ), */
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
                                                        color: ColorConstant
                                                            .gray900,
                                                        fontSize: getFontSize(
                                                          16,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ": \n",
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .blueGray40001,
                                                        fontSize: getFontSize(
                                                          16,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: duracion,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray900,
                                                        fontSize: getFontSize(
                                                          16,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                                            color: ColorConstant
                                                                .gray900,
                                                            fontSize:
                                                                getFontSize(
                                                              16,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ": ",
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .blueGray40001,
                                                            fontSize:
                                                                getFontSize(
                                                              16,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: pet,
                                                          style: TextStyle(
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            color: ColorConstant
                                                                .gray900,
                                                            fontSize:
                                                                getFontSize(
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
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
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
                                                alignment:
                                                    Alignment.bottomCenter,
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
                                            "¡Bienvenido de vuelta!\n" + pname,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtUrbanistRomanBlack16,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "Observaciones",
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray900,
                                                        fontSize: getFontSize(
                                                          12,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ": \n",
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .blueGray40001,
                                                        fontSize: getFontSize(
                                                          12,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w700,
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
                                                  top: 0,
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
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: obs,
                                                        style: TextStyle(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize: getFontSize(
                                                            12,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w500,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
