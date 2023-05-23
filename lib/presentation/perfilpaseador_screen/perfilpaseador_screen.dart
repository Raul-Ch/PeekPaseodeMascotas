import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PerfilpaseadorScreen extends StatelessWidget {
  TextEditingController rateController = TextEditingController();

  TextEditingController lastnametwoController = TextEditingController();

  TextEditingController lastnametwooneController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController postalcodeController = TextEditingController();

  TextEditingController streetController = TextEditingController();

  TextEditingController municipalityController = TextEditingController();

  TextEditingController cityController = TextEditingController();

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
                  //Navigator.pushNamed(context, AppRoutes.pefilduenioScreen);
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
                contentPadding: const EdgeInsets.only(left: 150),
                leading: CustomImageView(
                  imagePath: ImageConstant.imgMaskgroup39x39,
                ),
                title: Text(
                  'Cerrar Sesión',
                  style: AppStyle.txtUrbanistRomanBold25,
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
        resizeToAvoidBottomInset: false,
        body: Container(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 30,
                          top: 58,
                          right: 27,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 3,
                                bottom: 30,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "¡Tú!",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPaseador,
                                    height: getVerticalSize(
                                      128,
                                    ),
                                    width: getHorizontalSize(
                                      122,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        64,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 12,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      42,
                                    ),
                                    width: getHorizontalSize(
                                      109,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Calificación",
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
                                                    fontSize: getFontSize(
                                                      20,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ": ",
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
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
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 8,
                                            ),
                                            child: Row(
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
                                                Container(
                                                  height: getVerticalSize(
                                                    18,
                                                  ),
                                                  width: getHorizontalSize(
                                                    27,
                                                  ),
                                                  margin: getMargin(
                                                    left: 3,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgPlay,
                                                        height: getVerticalSize(
                                                          16,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          15,
                                                        ),
                                                        alignment:
                                                            Alignment.topRight,
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgStar3,
                                                        height: getVerticalSize(
                                                          18,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          16,
                                                        ),
                                                        radius: BorderRadius
                                                            .circular(
                                                          getHorizontalSize(
                                                            1,
                                                          ),
                                                        ),
                                                        alignment: Alignment
                                                            .centerLeft,
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
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 11,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 3,
                                            ),
                                            child: Text(
                                              "Tarifa:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: getHorizontalSize(
                                              110,
                                            ),
                                            focusNode: FocusNode(),
                                            controller: rateController,
                                            hintText: "Tarifa",
                                            margin: getMargin(
                                              left: 4,
                                            ),
                                            padding:
                                                TextFormFieldPadding.PaddingT6,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 39,
                                            bottom: 31,
                                          ),
                                          child: Text(
                                            "Exp:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistRomanBold20,
                                          ),
                                        ),
                                        Container(
                                          width: getHorizontalSize(
                                            135,
                                          ),
                                          margin: getMargin(
                                            left: 10,
                                          ),
                                          padding: getPadding(
                                            left: 5,
                                            top: 8,
                                            right: 5,
                                            bottom: 8,
                                          ),
                                          decoration: AppDecoration
                                              .txtOutlineIndigo50
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder8,
                                          ),
                                          child: Text(
                                            "Experiencia",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium15,
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
                      Padding(
                        padding: getPadding(
                          left: 31,
                          top: 0,
                          right: 29,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 3,
                              ),
                              child: Text(
                                "Nombre:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                225,
                              ),
                              margin: getMargin(
                                left: 13,
                              ),
                              padding: getPadding(
                                left: 10,
                                top: 5,
                                right: 10,
                                bottom: 5,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineIndigo50.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder8,
                              ),
                              child: Text(
                                "Nombre",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 31,
                          top: 7,
                          right: 29,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "Apellido Paterno:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                152,
                              ),
                              focusNode: FocusNode(),
                              controller: lastnametwoController,
                              hintText: "Apellido Paterno",
                              margin: getMargin(
                                left: 9,
                              ),
                              padding: TextFormFieldPadding.PaddingT6,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 31,
                          top: 8,
                          right: 29,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 5,
                              ),
                              child: Text(
                                "Apellido Materno:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                152,
                              ),
                              focusNode: FocusNode(),
                              controller: lastnametwooneController,
                              hintText: "Apellido Materno",
                              margin: getMargin(
                                left: 1,
                              ),
                              variant: TextFormFieldVariant.OutlineIndigo50_1,
                              padding: TextFormFieldPadding.PaddingT6,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 33,
                            top: 5,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Edad:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 109,
                                ),
                                child: Text(
                                  "Sexo:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 32,
                          top: 4,
                          right: 29,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 2,
                              ),
                              child: Text(
                                "Teléfono:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Expanded(
                              child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: phoneController,
                                hintText: "Teléfono",
                                margin: getMargin(
                                  left: 7,
                                ),
                                padding: TextFormFieldPadding.PaddingT6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 34,
                          top: 7,
                          right: 29,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 3,
                              ),
                              child: Text(
                                "C.P.:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                148,
                              ),
                              focusNode: FocusNode(),
                              controller: postalcodeController,
                              hintText: "Código Postal",
                              margin: getMargin(
                                left: 6,
                              ),
                              padding: TextFormFieldPadding.PaddingT6,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 11,
                                bottom: 4,
                              ),
                              child: Text(
                                "N°:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            CustomButton(
                              height: getVerticalSize(
                                30,
                              ),
                              width: getHorizontalSize(
                                76,
                              ),
                              text: "Núm. C.",
                              margin: getMargin(
                                left: 5,
                              ),
                              variant: ButtonVariant.OutlineIndigo50,
                              padding: ButtonPadding.PaddingAll6,
                              fontStyle: ButtonFontStyle
                                  .UrbanistRomanMedium15Bluegray400,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 32,
                          top: 8,
                          right: 29,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 2,
                              ),
                              child: Text(
                                "Calle:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Expanded(
                              child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: streetController,
                                hintText: "Calle",
                                margin: getMargin(
                                  left: 6,
                                ),
                                variant: TextFormFieldVariant.OutlineIndigo50_1,
                                padding: TextFormFieldPadding.PaddingT6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 28,
                          top: 7,
                          right: 29,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 5,
                              ),
                              child: Text(
                                "Municipio:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                221,
                              ),
                              focusNode: FocusNode(),
                              controller: municipalityController,
                              hintText: "Municipio",
                              margin: getMargin(
                                left: 5,
                              ),
                              padding: TextFormFieldPadding.PaddingT6,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 28,
                          top: 9,
                          right: 29,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 1,
                              ),
                              child: Text(
                                "Ciudad:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Expanded(
                              child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: cityController,
                                hintText: "Ciudad",
                                margin: getMargin(
                                  left: 4,
                                ),
                                padding: TextFormFieldPadding.PaddingT6,
                                textInputAction: TextInputAction.done,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 50,
                          top: 10,
                          right: 50,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                              height: getVerticalSize(
                                31,
                              ),
                              width: getHorizontalSize(
                                113,
                              ),
                              text: "Editar",
                              variant: ButtonVariant.OutlineBlack9003f_2,
                              shape: ButtonShape.RoundedBorder15,
                              padding: ButtonPadding.PaddingAll6,
                              fontStyle: ButtonFontStyle
                                  .UrbanistRomanSemiBold15Gray900,
                            ),
                            CustomButton(
                              height: getVerticalSize(
                                31,
                              ),
                              width: getHorizontalSize(
                                113,
                              ),
                              text: "Actualizar",
                              variant: ButtonVariant.OutlineBlack9003f_2,
                              shape: ButtonShape.RoundedBorder15,
                              padding: ButtonPadding.PaddingAll6,
                              fontStyle: ButtonFontStyle
                                  .UrbanistRomanSemiBold15Gray900,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 130,
                          top: 10,
                          //right: 100,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                              height: getVerticalSize(
                                31,
                              ),
                              width: getHorizontalSize(
                                113,
                              ),
                              text: "Cerrar Sesión",
                              onTap: () {
                                FirebaseAuth.instance.signOut();
                                Navigator.popUntil(
                                    context,
                                    ModalRoute.withName(
                                        AppRoutes.welcomeScreen));
                              },
                              variant: ButtonVariant.OutlineBlack9003f_2,
                              shape: ButtonShape.RoundedBorder15,
                              padding: ButtonPadding.PaddingAll6,
                              fontStyle: ButtonFontStyle
                                  .UrbanistRomanSemiBold15Gray900,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgframe,
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
            ],
          ),
        ),
      ),
    );
  }
}
