import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

// ignore: must_be_immutable
class VercitasItemProgresoWidget extends StatelessWidget {
  VercitasItemProgresoWidget();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Navigator.pushNamed(context, AppRoutes.paseoduenioprogresoScreen);
      },
      child: Container(
        padding: getPadding(
          top: 12,
          bottom: 12,
        ),
        decoration: AppDecoration.outlineBlack9003f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold25Gray900,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgprogreso,
                    height: getSize(
                      71,
                    ),
                    width: getSize(
                      71,
                    ),
                    margin: getMargin(
                      left: 8,
                      top: 3,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 7,
                bottom: 18,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 6,
                        ),
                        child: Text(
                          "Canela",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold15,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCanelita,
                        height: getVerticalSize(
                          27,
                        ),
                        width: getHorizontalSize(
                          28,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            14,
                          ),
                        ),
                        margin: getMargin(
                          left: 34,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            63,
                          ),
                          child: Text(
                            "Juan Gutiérrez",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold15,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPaseador,
                          height: getVerticalSize(
                            29,
                          ),
                          width: getHorizontalSize(
                            28,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              14,
                            ),
                          ),
                          margin: getMargin(
                            left: 18,
                            top: 8,
                            bottom: 4,
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
                55,
              ),
              margin: getMargin(
                top: 25,
                bottom: 34,
              ),
              child: Text(
                "",
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtUrbanistRomanBold15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
