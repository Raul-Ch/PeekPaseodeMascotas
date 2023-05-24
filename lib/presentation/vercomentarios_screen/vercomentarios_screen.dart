import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class VercomentariosScreen extends StatelessWidget {
  TextEditingController nameinputController = TextEditingController();

  TextEditingController apellido1inputController = TextEditingController();

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
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: getVerticalSize(
                      1000,
                    ),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: size.height,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgBackground,
                                  height: getVerticalSize(
                                    768,
                                  ),
                                  width: getHorizontalSize(
                                    375,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 22,
                                      right: 23,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: getVerticalSize(
                                            192,
                                          ),
                                          width: getHorizontalSize(
                                            329,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "Calificación",
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize: getFontSize(
                                                            20,
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
                                                              .gray900,
                                                          fontSize: getFontSize(
                                                            20,
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
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                  padding: getPadding(
                                                    top: 96,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          bottom: 71,
                                                        ),
                                                        child: Text(
                                                          "Exp:",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistRomanBold20,
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: getMargin(
                                                          top: 1,
                                                        ),
                                                        padding: getPadding(
                                                          left: 10,
                                                          top: 8,
                                                          right: 10,
                                                          bottom: 8,
                                                        ),
                                                        decoration:
                                                            AppDecoration
                                                                .outlineIndigo50
                                                                .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                bottom: 59,
                                                              ),
                                                              child: Text(
                                                                "Experiencia",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium15Bluegray400,
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
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                  padding: getPadding(
                                                    top: 59,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                          bottom: 3,
                                                        ),
                                                        child: Text(
                                                          "Tarifa:",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistRomanBold20,
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          110,
                                                        ),
                                                        margin: getMargin(
                                                          left: 4,
                                                        ),
                                                        padding: getPadding(
                                                          all: 5,
                                                        ),
                                                        decoration: AppDecoration
                                                            .txtOutlineIndigo50
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder8,
                                                        ),
                                                        child: Text(
                                                          "Tarifa",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistRomanMedium15Bluegray400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              /*                                             Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 115,
                                                    top: 24,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgStar14,
                                                            height:
                                                                getVerticalSize(
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
                                                          ),
                                                          CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgStar24,
                                                            height:
                                                                getVerticalSize(
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
                                                            margin: getMargin(
                                                              left: 3,
                                                            ),
                                                          ),
                                                          CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgStar44,
                                                            height:
                                                                getVerticalSize(
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
                                                            margin: getMargin(
                                                              left: 3,
                                                            ),
                                                          ),
                                                          CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgStar34,
                                                            height:
                                                                getVerticalSize(
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
                                                            margin: getMargin(
                                                              left: 3,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      CustomImageView(
                                                        height: getVerticalSize(
                                                          16,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          15,
                                                        ),
                                                        alignment: Alignment
                                                            .centerRight,
                                                        margin: getMargin(
                                                          top: 97,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ), */
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 12,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                  bottom: 3,
                                                ),
                                                child: Text(
                                                  "Nombre:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanBold20,
                                                ),
                                              ),
                                              CustomTextFormField(
                                                width: getHorizontalSize(
                                                  235,
                                                ),
                                                focusNode: FocusNode(),
                                                controller: nameinputController,
                                                hintText: "Nombre",
                                                padding: TextFormFieldPadding
                                                    .PaddingT6,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 15,
                                            right: 1,
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
                                                  "Apellidos:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanBold20,
                                                ),
                                              ),
                                              CustomTextFormField(
                                                width: getHorizontalSize(
                                                  158,
                                                ),
                                                focusNode: FocusNode(),
                                                controller:
                                                    apellido1inputController,
                                                hintText: "Apellido Paterno",
                                                padding: TextFormFieldPadding
                                                    .PaddingT6,
                                                textInputAction:
                                                    TextInputAction.done,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 23,
                                          ),
                                          child: Text(
                                            "Comentarios:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistRomanBold20,
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
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: getMargin(
                              left: 24,
                              right: 23,
                              bottom: 32,
                            ),
                            padding: getPadding(
                              left: 26,
                              top: 10,
                              right: 26,
                              bottom: 10,
                            ),
                            decoration: AppDecoration.fillWhiteA70016,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    267,
                                  ),
                                  margin: getMargin(
                                    top: 16,
                                    right: 9,
                                  ),
                                  padding: getPadding(
                                    left: 22,
                                    top: 16,
                                    right: 22,
                                    bottom: 16,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9003f.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 56,
                                        ),
                                        child: Text(
                                          "Fue muy atento...",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratAlternatesSemiBold15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    266,
                                  ),
                                  margin: getMargin(
                                    top: 29,
                                    right: 10,
                                  ),
                                  padding: getPadding(
                                    all: 18,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9003f.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 52,
                                        ),
                                        child: Text(
                                          "Fue muy atento...",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratAlternatesSemiBold15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    266,
                                  ),
                                  margin: getMargin(
                                    top: 17,
                                    right: 10,
                                  ),
                                  padding: getPadding(
                                    left: 16,
                                    top: 21,
                                    right: 16,
                                    bottom: 21,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9003f.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 46,
                                        ),
                                        child: Text(
                                          "Fue muy atento...",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratAlternatesSemiBold15,
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
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              right: 1,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 27,
                                  ),
                                  child: Text(
                                    "¡Tú!",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
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
                                CustomImageView(
                                  imagePath: ImageConstant.imgframe,
                                  height: getVerticalSize(
                                    32,
                                  ),
                                  width: getHorizontalSize(
                                    371,
                                  ),
                                  margin: getMargin(
                                    top: 755,
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
            ],
          ),
        ),
      ),
    );
  }
}
