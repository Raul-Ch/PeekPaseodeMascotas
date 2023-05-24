import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PerfilmascotaScreen extends StatelessWidget {
  TextEditingController tamaoController = TextEditingController();

  TextEditingController razaController = TextEditingController();

  TextEditingController personalidadController = TextEditingController();

  TextEditingController notasController = TextEditingController();

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
        resizeToAvoidBottomInset: false,
        body: Container(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: getPadding(
                    bottom: 280,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 2,
                          bottom: 3,
                        ),
                        child: Text(
                          "Peso:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          91,
                        ),
                        margin: getMargin(
                          left: 17,
                          top: 1,
                        ),
                        padding: getPadding(
                          left: 4,
                          top: 5,
                          right: 4,
                          bottom: 5,
                        ),
                        decoration: AppDecoration.txtOutlineIndigo50.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "Peso",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanMedium15,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 18,
                          top: 1,
                          bottom: 4,
                        ),
                        child: Text(
                          "Edad:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          87,
                        ),
                        margin: getMargin(
                          left: 4,
                          bottom: 1,
                        ),
                        padding: getPadding(
                          left: 4,
                          top: 5,
                          right: 4,
                          bottom: 5,
                        ),
                        decoration: AppDecoration.txtOutlineIndigo50.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "Edad",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanMedium15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
                      Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 13,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                onTap: () {
                                  onTapBtnArrowleft(context);
                                },
                                height: 41,
                                width: 41,
                                margin: getMargin(
                                  top: 2,
                                  bottom: 111,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  154,
                                ),
                                width: getHorizontalSize(
                                  127,
                                ),
                                margin: getMargin(
                                  left: 66,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "¡Canela!",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanBold35,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCanelita,
                                      height: getVerticalSize(
                                        112,
                                      ),
                                      width: getHorizontalSize(
                                        107,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          56,
                                        ),
                                      ),
                                      alignment: Alignment.bottomRight,
                                      margin: getMargin(
                                        right: 3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 34,
                          top: 12,
                          right: 26,
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
                          left: 34,
                          top: 13,
                          right: 26,
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
                                "Tamaño:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Expanded(
                              child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: tamaoController,
                                hintText: "Tamaño",
                                margin: getMargin(
                                  left: 10,
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
                          top: 13,
                          right: 26,
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
                                "Raza:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Expanded(
                              child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: razaController,
                                hintText: "Raza",
                                margin: getMargin(
                                  left: 13,
                                ),
                                padding: TextFormFieldPadding.PaddingT6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 35,
                          top: 40,
                          right: 26,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 3,
                              ),
                              child: Text(
                                "Enfermedades:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                62,
                              ),
                              margin: getMargin(
                                top: 1,
                              ),
                              padding: getPadding(
                                left: 2,
                                top: 5,
                                right: 2,
                                bottom: 5,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineIndigo50.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder8,
                              ),
                              child: Text(
                                "bool",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium15,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 2,
                                bottom: 3,
                              ),
                              child: Text(
                                "Sexo:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                45,
                              ),
                              margin: getMargin(
                                left: 5,
                                bottom: 1,
                              ),
                              padding: getPadding(
                                left: 2,
                                top: 5,
                                right: 2,
                                bottom: 5,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineIndigo50.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder8,
                              ),
                              child: Text(
                                "Sexo",
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
                          left: 32,
                          top: 12,
                          right: 28,
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
                                "Personalidad:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                175,
                              ),
                              focusNode: FocusNode(),
                              controller: personalidadController,
                              hintText: "Personalidad",
                              margin: getMargin(
                                left: 18,
                              ),
                              padding: TextFormFieldPadding.PaddingT6,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 32,
                          top: 11,
                          right: 27,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 19,
                                bottom: 28,
                              ),
                              child: Text(
                                "Notas:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Expanded(
                              child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: notasController,
                                hintText: "Notas",
                                margin: getMargin(
                                  left: 7,
                                ),
                                padding: TextFormFieldPadding.PaddingT27,
                                textInputAction: TextInputAction.done,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 32,
                            top: 19,
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
                          top: 29,
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
                    bottom: 624,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                207,
                              ),
                              decoration: AppDecoration.txtOutlineBlack90066,
                              child: Text(
                                "Peek ",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtArtographieMedium25,
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 5,
                              ),
                              decoration: AppDecoration.txtOutlineBlack90066,
                              child: Text(
                                " Paseo de Mascotas",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtArtographieMedium25,
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
    );
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
