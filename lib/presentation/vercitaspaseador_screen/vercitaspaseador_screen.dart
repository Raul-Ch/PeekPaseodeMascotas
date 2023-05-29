import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

class VercitaspaseadorScreen extends StatelessWidget {
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
          height: getVerticalSize(
            750,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "CITAS:",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtArtographieMedium30,
                      ),
                      Container(
                        margin: getMargin(
                          left: 7,
                          top: 40,
                          right: 7,
                        ),
                        padding: getPadding(
                          top: 13,
                          bottom: 13,
                        ),
                        decoration: AppDecoration.outlineBlack9003f.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgprogreso,
                              height: getSize(
                                71,
                              ),
                              width: getSize(
                                71,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 21,
                                bottom: 6,
                              ),
                              child: Text(
                                "En progreso",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold35,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 7,
                          top: 21,
                          right: 7,
                        ),
                        padding: getPadding(
                          top: 13,
                          bottom: 13,
                        ),
                        decoration: AppDecoration.outlineBlack9003f.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgagendado,
                              height: getSize(
                                76,
                              ),
                              width: getSize(
                                76,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                                bottom: 12,
                              ),
                              child: Text(
                                "Agendadas",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold35Teal900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 6,
                          top: 21,
                          right: 6,
                          bottom: 20,
                        ),
                        padding: getPadding(
                          left: 15,
                          top: 13,
                          right: 15,
                          bottom: 13,
                        ),
                        decoration: AppDecoration.outlineBlack9003f.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgbandera,
                              height: getVerticalSize(
                                80,
                              ),
                              width: getHorizontalSize(
                                81,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 21,
                                right: 39,
                                bottom: 15,
                              ),
                              child: Text(
                                "Terminadas",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtUrbanistRomanBold35OrangeA200,
                              ),
                            ),
                          ],
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
                  375,
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
