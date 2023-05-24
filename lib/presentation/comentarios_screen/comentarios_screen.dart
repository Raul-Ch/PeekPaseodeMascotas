import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

import '../../widgets/custom_icon_button.dart';

class ComentariosScreen extends StatelessWidget {
  TextEditingController group678Controller = TextEditingController();

  TextEditingController group677Controller = TextEditingController();

  ComentariosScreen({super.key});

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
        backgroundColor: const Color.fromARGB(255, 214, 223, 151),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: getVerticalSize(
            812,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: getVerticalSize(
                    604,
                  ),
                  width: double.maxFinite,
                  margin: getMargin(
                    bottom: 32,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFondoverde,
                        height: getVerticalSize(
                          604,
                        ),
                        width: getHorizontalSize(
                          375,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: getVerticalSize(
                            119,
                          ),
                          width: getHorizontalSize(
                            91,
                          ),
                          margin: getMargin(
                            left: 134,
                            bottom: 19,
                          ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: getPadding(
                                    left: 23,
                                    top: 4,
                                    right: 23,
                                    bottom: 4,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9003f.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder14,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "Enviar",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtUrbanistRomanCom,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCachorro1,
                                height: getVerticalSize(
                                  97,
                                ),
                                width: getHorizontalSize(
                                  85,
                                ),
                                alignment: Alignment.topCenter,
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
                alignment: Alignment.center,
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
                              118,
                            ),
                            width: getHorizontalSize(
                              113,
                            ),
                            margin: getMargin(
                              top: 6,
                              bottom: 14,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPeek299x96,
                                  height: getVerticalSize(
                                    99,
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
                              bottom: 11,
                            ),
                            decoration: AppDecoration.txtOutlineBlack90066,
                            child: Text(
                              "Peek’ \nPaseo de Mascotas",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtArtographieMedium25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        313,
                      ),
                      margin: getMargin(
                        left: 31,
                        top: 0,
                        right: 30,
                      ),
                      child: Text(
                        "¿Tienes alguna sugerencia o comentario ?",
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtUrbanistRomanBold25Gray900,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: getHorizontalSize(
                          294,
                        ),
                        margin: getMargin(
                          left: 24,
                          top: 33,
                          right: 56,
                        ),
                        child: Text(
                          "Por favor, ingresa en el recuadro de abajo tu correo.",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanMedium16Gray900,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: group678Controller,
                      hintText: "Ingresa tu correo",
                      margin: getMargin(
                        left: 21,
                        top: 7,
                        right: 23,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 23,
                          top: 44,
                        ),
                        child: Text(
                          "Y en la parte de aquí tu comentario",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanMedium16Gray900,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: group677Controller,
                      hintText: "Comentario",
                      margin: getMargin(
                        left: 21,
                        top: 1,
                        right: 23,
                      ),
                      padding: TextFormFieldPadding.PaddingT56,
                      textInputAction: TextInputAction.done,
                      maxLines: 7,
                    ),
                    const Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgframe,
                      height: getVerticalSize(
                        20,
                      ),
                      width: getHorizontalSize(
                        375,
                      ),
                    ),
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
