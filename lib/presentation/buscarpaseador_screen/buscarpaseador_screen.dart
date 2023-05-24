import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

class BuscarpaseadorScreen extends StatelessWidget {
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
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: getVerticalSize(
                      738,
                    ),
                    width: double.maxFinite,
                    margin: getMargin(
                      bottom: 490,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: getVerticalSize(
                              604,
                            ),
                            width: double.maxFinite,
                            child: Stack(
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
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 7,
                                      right: 9,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Paseadores Cercanos",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtArtographieMedium30,
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            429,
                                          ),
                                          width: getHorizontalSize(
                                            359,
                                          ),
                                          margin: getMargin(
                                            top: 14,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  margin: getMargin(
                                                    bottom: 9,
                                                  ),
                                                  padding: getPadding(
                                                    left: 17,
                                                    top: 11,
                                                    right: 17,
                                                    bottom: 11,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlineBlack9003f
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder46,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                          right: 7,
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgPaseador,
                                                              height:
                                                                  getVerticalSize(
                                                                74,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                77,
                                                              ),
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                getHorizontalSize(
                                                                  38,
                                                                ),
                                                              ),
                                                              margin: getMargin(
                                                                bottom: 3,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 4,
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
                                                                      81,
                                                                    ),
                                                                    margin:
                                                                        getMargin(
                                                                      left: 2,
                                                                    ),
                                                                    child: Text(
                                                                      "José Rodriguez",
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtUrbanistRomanBold18,
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Text(
                                                                        "Tarifa:",
                                                                        overflow:
                                                                            TextOverflow.ellipsis,
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        style: AppStyle
                                                                            .txtUrbanistRomanBold18,
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            getPadding(
                                                                          left:
                                                                              3,
                                                                        ),
                                                                        child:
                                                                            Text(
                                                                          "190",
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          style:
                                                                              AppStyle.txtUrbanistRomanMedium18,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 21,
                                                                top: 2,
                                                                bottom: 1,
                                                              ),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          getPadding(
                                                                        right:
                                                                            7,
                                                                      ),
                                                                      child:
                                                                          RichText(
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: "Calificación",
                                                                              style: TextStyle(
                                                                                color: ColorConstant.gray900,
                                                                                fontSize: getFontSize(
                                                                                  18,
                                                                                ),
                                                                                fontFamily: 'Urbanist',
                                                                                fontWeight: FontWeight.w500,
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
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        getPadding(
                                                                      left: 9,
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgStar1,
                                                                          height:
                                                                              getVerticalSize(
                                                                            18,
                                                                          ),
                                                                          width:
                                                                              getHorizontalSize(
                                                                            19,
                                                                          ),
                                                                          radius:
                                                                              BorderRadius.circular(
                                                                            getHorizontalSize(
                                                                              1,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgStar2,
                                                                          height:
                                                                              getVerticalSize(
                                                                            18,
                                                                          ),
                                                                          width:
                                                                              getHorizontalSize(
                                                                            19,
                                                                          ),
                                                                          radius:
                                                                              BorderRadius.circular(
                                                                            getHorizontalSize(
                                                                              1,
                                                                            ),
                                                                          ),
                                                                          margin:
                                                                              getMargin(
                                                                            left:
                                                                                3,
                                                                          ),
                                                                        ),
                                                                        CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgStar4,
                                                                          height:
                                                                              getVerticalSize(
                                                                            18,
                                                                          ),
                                                                          width:
                                                                              getHorizontalSize(
                                                                            19,
                                                                          ),
                                                                          radius:
                                                                              BorderRadius.circular(
                                                                            getHorizontalSize(
                                                                              1,
                                                                            ),
                                                                          ),
                                                                          margin:
                                                                              getMargin(
                                                                            left:
                                                                                3,
                                                                          ),
                                                                        ),
                                                                        CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgStar3,
                                                                          height:
                                                                              getVerticalSize(
                                                                            18,
                                                                          ),
                                                                          width:
                                                                              getHorizontalSize(
                                                                            19,
                                                                          ),
                                                                          radius:
                                                                              BorderRadius.circular(
                                                                            getHorizontalSize(
                                                                              1,
                                                                            ),
                                                                          ),
                                                                          margin:
                                                                              getMargin(
                                                                            left:
                                                                                3,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        getPadding(
                                                                      top: 10,
                                                                    ),
                                                                    child: Text(
                                                                      "Tel: 565545985",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtUrbanistRomanMedium18,
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
                                                          left: 17,
                                                          top: 5,
                                                          right: 39,
                                                        ),
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
                                                                  .txtUrbanistRomanMedium18,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 11,
                                                                top: 1,
                                                                bottom: 1,
                                                              ),
                                                              child: Text(
                                                                "2 años paseando perros",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium15Gray900,
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
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    283,
                                                  ),
                                                  width: getHorizontalSize(
                                                    359,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Container(
                                                          padding: getPadding(
                                                            left: 17,
                                                            top: 11,
                                                            right: 17,
                                                            bottom: 11,
                                                          ),
                                                          decoration: AppDecoration
                                                              .outlineBlack9003f
                                                              .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder46,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    getPadding(
                                                                  top: 1,
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPaseador,
                                                                      height:
                                                                          getVerticalSize(
                                                                        74,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        77,
                                                                      ),
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                        getHorizontalSize(
                                                                          38,
                                                                        ),
                                                                      ),
                                                                      margin:
                                                                          getMargin(
                                                                        bottom:
                                                                            3,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                          getPadding(
                                                                        left: 4,
                                                                        top: 2,
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                getHorizontalSize(
                                                                              58,
                                                                            ),
                                                                            margin:
                                                                                getMargin(
                                                                              left: 2,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              "Lorena Macias",
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtUrbanistRomanBold18,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              top: 4,
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Text(
                                                                                  "Tarifa:",
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  textAlign: TextAlign.left,
                                                                                  style: AppStyle.txtUrbanistRomanBold18,
                                                                                ),
                                                                                Padding(
                                                                                  padding: getPadding(
                                                                                    left: 3,
                                                                                  ),
                                                                                  child: Text(
                                                                                    "200",
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    textAlign: TextAlign.left,
                                                                                    style: AppStyle.txtUrbanistRomanMedium18,
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
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    left: 17,
                                                                    top: 5,
                                                                    right: 22,
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        "Experiencia:",
                                                                        overflow:
                                                                            TextOverflow.ellipsis,
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        style: AppStyle
                                                                            .txtUrbanistRomanMedium18,
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            getPadding(
                                                                          left:
                                                                              11,
                                                                          bottom:
                                                                              2,
                                                                        ),
                                                                        child:
                                                                            Text(
                                                                          "Veterinaria, más de 4 años",
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          style:
                                                                              AppStyle.txtUrbanistRomanMedium15Gray900,
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
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            right: 22,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Calificación: ",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium18,
                                                              ),
/*                                                               Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgStar118x19,
                                                                    height:
                                                                        getVerticalSize(
                                                                      18,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      19,
                                                                    ),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                      getHorizontalSize(
                                                                        1,
                                                                      ),
                                                                    ),
                                                                    margin:
                                                                        getMargin(
                                                                      bottom:
                                                                          227,
                                                                    ),
                                                                  ),
                                                                  CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgStar218x19,
                                                                    height:
                                                                        getVerticalSize(
                                                                      18,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      19,
                                                                    ),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                      getHorizontalSize(
                                                                        1,
                                                                      ),
                                                                    ),
                                                                    margin:
                                                                        getMargin(
                                                                      left: 3,
                                                                      bottom:
                                                                          227,
                                                                    ),
                                                                  ),
                                                                  CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgStar418x19,
                                                                    height:
                                                                        getVerticalSize(
                                                                      18,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      19,
                                                                    ),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                      getHorizontalSize(
                                                                        1,
                                                                      ),
                                                                    ),
                                                                    margin:
                                                                        getMargin(
                                                                      left: 3,
                                                                      bottom:
                                                                          227,
                                                                    ),
                                                                  ),
                                                                  CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgStar318x19,
                                                                    height:
                                                                        getVerticalSize(
                                                                      18,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      19,
                                                                    ),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                      getHorizontalSize(
                                                                        1,
                                                                      ),
                                                                    ),
                                                                    margin:
                                                                        getMargin(
                                                                      left: 3,
                                                                      bottom:
                                                                          227,
                                                                    ),
                                                                  ),
                                                                  CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imageNotFound,
                                                                    height:
                                                                        getVerticalSize(
                                                                      16,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      18,
                                                                    ),
                                                                    margin:
                                                                        getMargin(
                                                                      left: 4,
                                                                      top: 229,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ), */
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            top: 67,
                                                            right: 24,
                                                          ),
                                                          child: Text(
                                                            "Tel: 5592118380",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanMedium18,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: InkWell(
                                                  onTap: () {
                                                    //Navigator.pop(context);
                                                    Navigator.pushNamed(
                                                        context,
                                                        AppRoutes
                                                            .perfilpaseadorcitasScreen);
                                                  },
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      283,
                                                    ),
                                                    width: getHorizontalSize(
                                                      359,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                            padding: getPadding(
                                                              left: 17,
                                                              top: 11,
                                                              right: 17,
                                                              bottom: 11,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBlack9003f
                                                                    .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder46,
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    top: 1,
                                                                  ),
                                                                  child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPaseador,
                                                                        height:
                                                                            getVerticalSize(
                                                                          74,
                                                                        ),
                                                                        width:
                                                                            getHorizontalSize(
                                                                          77,
                                                                        ),
                                                                        radius:
                                                                            BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                            38,
                                                                          ),
                                                                        ),
                                                                        margin:
                                                                            getMargin(
                                                                          bottom:
                                                                              3,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            getPadding(
                                                                          left:
                                                                              4,
                                                                          top:
                                                                              2,
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: getHorizontalSize(
                                                                                75,
                                                                              ),
                                                                              margin: getMargin(
                                                                                left: 2,
                                                                              ),
                                                                              child: Text(
                                                                                "Juan Gutiérrez",
                                                                                maxLines: null,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtUrbanistRomanBold18,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: getPadding(
                                                                                top: 4,
                                                                              ),
                                                                              child: Row(
                                                                                children: [
                                                                                  Text(
                                                                                    "Tarifa:",
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    textAlign: TextAlign.left,
                                                                                    style: AppStyle.txtUrbanistRomanBold18,
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: getPadding(
                                                                                      left: 3,
                                                                                    ),
                                                                                    child: Text(
                                                                                      "180",
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                      textAlign: TextAlign.left,
                                                                                      style: AppStyle.txtUrbanistRomanMedium18,
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
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        getPadding(
                                                                      left: 17,
                                                                      top: 5,
                                                                      right: 18,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          "Experiencia:",
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          style:
                                                                              AppStyle.txtUrbanistRomanRegular18,
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              getPadding(
                                                                            left:
                                                                                12,
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                1,
                                                                          ),
                                                                          child:
                                                                              Text(
                                                                            "4 Años y dueño de 2 perros",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style:
                                                                                AppStyle.txtUrbanistRomanMedium15Gray900,
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
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Padding(
                                                            padding: getPadding(
                                                              right: 22,
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Calificación: ",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtUrbanistRomanMedium18,
                                                                ),
                                                                /*                                                               Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgStar11,
                                                                      height:
                                                                          getVerticalSize(
                                                                        18,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        19,
                                                                      ),
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                        getHorizontalSize(
                                                                          1,
                                                                        ),
                                                                      ),
                                                                      margin:
                                                                          getMargin(
                                                                        bottom:
                                                                            227,
                                                                      ),
                                                                    ),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgStar21,
                                                                      height:
                                                                          getVerticalSize(
                                                                        18,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        19,
                                                                      ),
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                        getHorizontalSize(
                                                                          1,
                                                                        ),
                                                                      ),
                                                                      margin:
                                                                          getMargin(
                                                                        left: 3,
                                                                        bottom:
                                                                            227,
                                                                      ),
                                                                    ),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgStar41,
                                                                      height:
                                                                          getVerticalSize(
                                                                        18,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        19,
                                                                      ),
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                        getHorizontalSize(
                                                                          1,
                                                                        ),
                                                                      ),
                                                                      margin:
                                                                          getMargin(
                                                                        left: 3,
                                                                        bottom:
                                                                            227,
                                                                      ),
                                                                    ),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgStar31,
                                                                      height:
                                                                          getVerticalSize(
                                                                        18,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        19,
                                                                      ),
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                        getHorizontalSize(
                                                                          1,
                                                                        ),
                                                                      ),
                                                                      margin:
                                                                          getMargin(
                                                                        left: 3,
                                                                        bottom:
                                                                            227,
                                                                      ),
                                                                    ),
                                                                    CustomImageView(
                                                                      height:
                                                                          getVerticalSize(
                                                                        16,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        18,
                                                                      ),
                                                                      margin:
                                                                          getMargin(
                                                                        left: 4,
                                                                        top: 229,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ), */
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Padding(
                                                            padding: getPadding(
                                                              top: 64,
                                                              right: 23,
                                                            ),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        "Tel: ",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .gray900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        18,
                                                                      ),
                                                                      fontFamily:
                                                                          'Urbanist',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "5590213349",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .gray900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        18,
                                                                      ),
                                                                      fontFamily:
                                                                          'Urbanist',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
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
                          child: Container(
                            width: double.maxFinite,
                            margin: getMargin(
                              top: 0,
                              bottom: 565,
                            ),
                            padding: getPadding(
                              left: 22,
                              top: 3,
                              right: 22,
                              bottom: 3,
                            ),
                            decoration: AppDecoration.fillLightgreen20002,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPeek299x96,
                                  height: getVerticalSize(
                                    99,
                                  ),
                                  width: getHorizontalSize(
                                    96,
                                  ),
                                  margin: getMargin(
                                    left: 2,
                                    top: 0,
                                    bottom: 14,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    221,
                                  ),
                                  margin: getMargin(
                                    bottom: 11,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineBlack90066,
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
