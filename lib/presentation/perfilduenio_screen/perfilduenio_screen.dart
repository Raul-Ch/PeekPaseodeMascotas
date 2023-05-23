import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PerfilduenioScreen extends StatelessWidget {
  TextEditingController lastnameController = TextEditingController();

  TextEditingController lastnameoneController = TextEditingController();

  TextEditingController phonenumberController = TextEditingController();

  TextEditingController cpinputController = TextEditingController();

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
        resizeToAvoidBottomInset: false,
        body: Container(
          height: getVerticalSize(
            756,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: size.height,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBackground,
                        height: getVerticalSize(
                          756,
                        ),
                        width: getHorizontalSize(
                          375,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: getPadding(
                            left: 24,
                            top: 56,
                            right: 33,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 150,
                                ),
                                child: Text(
                                  "¡Tú!",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgduenio,
                                height: getVerticalSize(
                                  120,
                                ),
                                width: getHorizontalSize(
                                  125,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    62,
                                  ),
                                ),
                                margin: getMargin(
                                  left: 100,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 3,
                                  top: 26,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 2,
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
                                      padding: getPadding(
                                        left: 10,
                                        top: 5,
                                        right: 10,
                                        bottom: 5,
                                      ),
                                      decoration: AppDecoration
                                          .txtOutlineIndigo50
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.txtRoundedBorder8,
                                      ),
                                      child: Text(
                                        "Nombre",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtUrbanistRomanMedium15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 3,
                                  top: 11,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                      controller: lastnameController,
                                      hintText: "Apellido Paterno",
                                      padding: TextFormFieldPadding.PaddingT6,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 3,
                                  top: 11,
                                ),
                                child: Row(
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
                                      controller: lastnameoneController,
                                      hintText: "Apellido Materno",
                                      margin: getMargin(
                                        left: 1,
                                      ),
                                      variant: TextFormFieldVariant
                                          .OutlineIndigo50_1,
                                      padding: TextFormFieldPadding.PaddingT6,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 4,
                                  right: 103,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "Edad:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanBold20,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
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
                              Padding(
                                padding: getPadding(
                                  left: 4,
                                  top: 4,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    CustomTextFormField(
                                      width: getHorizontalSize(
                                        224,
                                      ),
                                      focusNode: FocusNode(),
                                      controller: phonenumberController,
                                      hintText: "Teléfono",
                                      padding: TextFormFieldPadding.PaddingT6,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 6,
                                  top: 7,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                        bottom: 4,
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
                                      controller: cpinputController,
                                      hintText: "Código Postal",
                                      margin: getMargin(
                                        bottom: 1,
                                      ),
                                      padding: TextFormFieldPadding.PaddingT6,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
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
                                        top: 1,
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
                                  left: 4,
                                  top: 7,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    CustomTextFormField(
                                      width: getHorizontalSize(
                                        257,
                                      ),
                                      focusNode: FocusNode(),
                                      controller: streetController,
                                      hintText: "Calle",
                                      variant: TextFormFieldVariant
                                          .OutlineIndigo50_1,
                                      padding: TextFormFieldPadding.PaddingT6,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 8,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                      padding: TextFormFieldPadding.PaddingT6,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    CustomTextFormField(
                                      width: getHorizontalSize(
                                        243,
                                      ),
                                      focusNode: FocusNode(),
                                      controller: cityController,
                                      hintText: "Ciudad",
                                      padding: TextFormFieldPadding.PaddingT6,
                                      textInputAction: TextInputAction.done,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 0,
                                  top: 19,
                                  right: 0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomButton(
                                      height: getVerticalSize(
                                        31,
                                      ),
                                      width: getHorizontalSize(
                                        113,
                                      ),
                                      text: "Editar",
                                      variant:
                                          ButtonVariant.OutlineBlack9003f_2,
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
                                      variant:
                                          ButtonVariant.OutlineBlack9003f_2,
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
                                  left: 100,
                                  top: 10,
                                  right: 50,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                      variant:
                                          ButtonVariant.OutlineBlack9003f_2,
                                      shape: ButtonShape.RoundedBorder15,
                                      padding: ButtonPadding.PaddingAll6,
                                      fontStyle: ButtonFontStyle
                                          .UrbanistRomanSemiBold15Gray900,
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
              CustomImageView(
                imagePath: ImageConstant.imgframe,
                height: getVerticalSize(
                  32,
                ),
                width: getHorizontalSize(
                  400,
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
