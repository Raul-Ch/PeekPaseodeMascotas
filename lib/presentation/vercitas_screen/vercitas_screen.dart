import '../vercitas_screen/widgets/vercitas_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

class VercitasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: getVerticalSize(
            1168,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBackground,
                height: getVerticalSize(
                  1136,
                ),
                width: getHorizontalSize(
                  375,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage4,
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              375,
                            ),
                          ),
                          Text(
                            "CITAS:",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtArtographieMedium30,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              right: 16,
                            ),
                            child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    21,
                                  ),
                                );
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return VercitasItemWidget();
                              },
                            ),
                          ),
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage432x375,
                        height: getVerticalSize(
                          32,
                        ),
                        width: getHorizontalSize(
                          375,
                        ),
                        margin: getMargin(
                          top: 636,
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
