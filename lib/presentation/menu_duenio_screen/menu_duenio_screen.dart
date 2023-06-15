import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/presentation/vercitasduenio_screen/paseoduenioagendadas_screen.dart';
import 'package:peek_app/widgets/custom_button.dart';

class MenuDuenioScreen extends StatefulWidget {
  const MenuDuenioScreen({Key? key}) : super(key: key);

  @override
  State<MenuDuenioScreen> createState() => _MenuDuenioScreen();
}

class _MenuDuenioScreen extends State<MenuDuenioScreen> {
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

//Paseador
  int tarifa = 0;
  String name = ' ';
  String lastname = '';
  String lastnameone = '';
  int phone = 0;
  String costo = "";
  String duracion = '';

  List<Map<String, dynamic>> citasList = [];
  late List<Map<String, dynamic>> items = [];

  late var myFuture4 = getpaseadores();
  late var myFuture2 = getCollection();

  Future getCollection() async {
    try {
      var user = FirebaseAuth.instance.currentUser!;
      var uid = FirebaseAuth.instance.currentUser!.uid;
      //final uid = user.uid;
      await FirebaseFirestore.instance
          .collection('duenios')
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

  Future getpaseadores() async {
    FirebaseFirestore.instance
        .collection("paseadores")
        .doc(pid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;
        var Nombre = data?['Nombre'];
        var Apellido = data?['Apellido Paterno'];
        var Telefono = data?['Telefono'];
        //var GCorreo = data?['Email'];
        print('Dueño data: ${documentSnapshot.data()}');
        //Set the relevant data to variables as needed
        //print(Nombre1);
        setState(() {
          name = Nombre;
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

  @override
  void initState() {
    myFuture2;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _handleRefresh() async {
    Navigator.popAndPushNamed(context, AppRoutes.menuDuenioScreen);
    return await Future.delayed(const Duration(seconds: 1));
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
    FirebaseAuth.instance.authStateChanges();
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
          /*     bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Paseos',
              ),
            ],
            backgroundColor: Colors.black,
          ), */
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
                    Navigator.pushNamed(context, AppRoutes.perfilduenioScreen);
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
                    Navigator.pushNamed(context, AppRoutes.perfilmascotaScreen);
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
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: getPadding(
                      left: 7,
                      top: 0,
                      right: 7,
                      bottom: 0,
                    ),
                    decoration: AppDecoration.fillLightgreen20001,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: getVerticalSize(
                            115,
                          ),
                          width: getHorizontalSize(
                            113,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPeek299x96,
                                height: getVerticalSize(
                                  110,
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
                            top: 0,
                            bottom: 0,
                          ),
                          decoration: AppDecoration.txtOutlineBlack90066,
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
                                  style: AppStyle.txtArtographieMediumscreens,
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
                                  style:
                                      AppStyle.txtArtographieMediumsubscreens,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBackground,
                        height: (MediaQuery.of(context).size.height),
                        width: getHorizontalSize(
                          375,
                        ),
                        alignment: Alignment.bottomCenter,
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
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: (MediaQuery.of(context).size.height),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 450,
                              ),
                              CustomButton(
                                height: getVerticalSize(
                                  67,
                                ),
                                text: "Mi perfil",
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(
                                      context, AppRoutes.perfilduenioScreen);
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
                                  //Navigator.pop(context);
                                  Navigator.pushNamed(
                                      context, AppRoutes.buscarpaseadorScreen);
                                },
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
                                fontStyle: ButtonFontStyle
                                    .UrbanistRomanSemiBold25WhiteA700,
                              ),
                              CustomButton(
                                onTap: () {
                                  //Navigator.pop(context);
                                  Navigator.pushNamed(context,
                                      AppRoutes.paseosmenuduenioScreen);
                                },
                                height: getVerticalSize(
                                  67,
                                ),
                                text: "Ver paseos",
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
                                  32.2,
                                ),
                                width: getHorizontalSize(
                                  375,
                                ),
                                margin: getMargin(
                                  top: 85,
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
                            500,
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
                                          style:
                                              AppStyle.txtUrbanistRomanBold20,
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
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 4,
                                            right: 16,
                                          ),
                                          child: Text(
                                            name + " " + lastname,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium18,
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
                                                          color: ColorConstant
                                                              .gray900,
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
                                                        text: ": ",
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
                                                          svgPath:
                                                              ImageConstant.imgStar1,
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
                                                          svgPath:
                                                              ImageConstant.imgStar2,
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
                                                              ImageConstant.imgStar4,
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
                                                              ImageConstant.imgStar3,
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
                                                    ), */
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
                                                          text:
                                                              "Tiempo recorrido",
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
                                                          text: ":",
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
                                                  Text(
                                                    duracion,
                                                    overflow:
                                                        TextOverflow.ellipsis,
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
                                    top: 40,
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
                                        child: Padding(
                                          padding: getPadding(
                                            left: 26,
                                            right: 28,
                                            bottom: 12,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                                          color: ColorConstant
                                                              .gray900,
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
                                                        text: ":",
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
                                                      imagePath: ImageConstant
                                                          .imgCanelita,
                                                      height: getVerticalSize(
                                                        74,
                                                      ),
                                                      width: getHorizontalSize(
                                                        77,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          38,
                                                        ),
                                                      ),
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          right: 7,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: " ",
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray40001,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    16,
                                                                  ),
                                                                  fontFamily:
                                                                      'Urbanist',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: pet,
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .gray900,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    16,
                                                                  ),
                                                                  fontFamily:
                                                                      'Urbanist',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          textAlign:
                                                              TextAlign.left,
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
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
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
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            height: getVerticalSize(
                                              126,
                                            ),
                                            width: getHorizontalSize(
                                              116,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.whiteA700,
                                              borderRadius:
                                                  BorderRadius.circular(
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
                                                  color:
                                                      ColorConstant.black9007f,
                                                  spreadRadius:
                                                      getHorizontalSize(
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
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 15,
                                              right: 14,
                                              top: 30,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: getHorizontalSize(
                                                    86,
                                                  ),
                                                  child: Text(
                                                    "¡Bienvenido de vuelta!",
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtUrbanistRomanBlack16,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 5,
                                                  ),
                                                  child: Text(
                                                    dname,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistRomanBlack16,
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
                                    left: 0,
                                    top: 40,
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
