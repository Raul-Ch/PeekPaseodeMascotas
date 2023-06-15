import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class ComentariosScreen extends StatelessWidget {
  TextEditingController asuntoController = TextEditingController();
  TextEditingController comentarioController = TextEditingController();

  ComentariosScreen({super.key});

  @override
  void dispose() {
    asuntoController.dispose();
    comentarioController.dispose();
  }

  UploadComentario(context) {
    FirebaseFirestore.instance.collection('comentarios').doc().set({
      'Asunto': asuntoController.text.trim(),
      'Comentario': comentarioController.text.trim(),
    });
    SentComentario(context);
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
                            130,
                          ),
                          width: getHorizontalSize(
                            91,
                          ),
                          margin: getMargin(
                            left: 134,
                            bottom: 19,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: getPadding(
                                    left: 5,
                                    top: 0,
                                    right: 5,
                                    bottom: 0,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9003f.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder14,
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      UploadComentario(context);
                                    },
                                    child: Text(
                                      "Enviar",
                                      //overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtUrbanistRomanCom,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCachorro1,
                                height: getVerticalSize(
                                  99,
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
                              left: 15,
                            ),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPeek299x96,
                                  height: getVerticalSize(
                                    120,
                                  ),
                                  width: getHorizontalSize(
                                    120,
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
                              bottom: 5,
                            ),
                            decoration: AppDecoration.txtOutlineBlack90066,
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
                          "Por favor, ingresa en el recuadro de abajo el asunto general de la sugerenica o comentario.",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanMedium16Gray900,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: asuntoController,
                      hintText: "Ingresa tu sugerencia,queja o comentario",
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
                          top: 30,
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
                      controller: comentarioController,
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

  SentComentario(BuildContext context) {
    Widget okButton = TextButton(
      onPressed: () {
        Navigator.pop(context);
        Navigator.pop(context);
      },
      child: const Text("Ok"),
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Comentarios"),
      content: const Text(
          textAlign: TextAlign.left,
          "¡Muchas gracias por tus comentarios, ten por seguro que los tendremos en cuenta!"),
      actions: [okButton],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
