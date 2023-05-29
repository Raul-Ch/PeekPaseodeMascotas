//import '../paseoduenioprogreso_screen/widgets/paseoduenioprog_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PaseoduenioprogresoScreen extends StatelessWidget {
  TextEditingController cpinputController = TextEditingController();

  TextEditingController phoneinputController = TextEditingController();

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
              Container(
                height: getVerticalSize(
                  732.5,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          780,
                        ),
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBackground,
                              height: getVerticalSize(
                                780,
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
                                  left: 22,
                                  top: 35,
                                  right: 20,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 25,
                                        right: 20,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 34,
                                              bottom: 27,
                                            ),
                                            child: Text(
                                              "¡Canela! pasea con:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCanelita,
                                            height: getVerticalSize(
                                              87,
                                            ),
                                            width: getHorizontalSize(
                                              86,
                                            ),
                                            radius: BorderRadius.circular(
                                              getHorizontalSize(
                                                43,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 28,
                                        top: 17,
                                        right: 23,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 34,
                                              bottom: 31,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                RichText(
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
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar118x16,
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          1,
                                                        ),
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar218x16,
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          1,
                                                        ),
                                                      ),
                                                      margin: getMargin(
                                                        left: 3,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar418x16,
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          1,
                                                        ),
                                                      ),
                                                      margin: getMargin(
                                                        left: 3,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar318x16,
                                                      height: getVerticalSize(
                                                        18,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
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
                                                          ImageConstant.imgPlay,
                                                      height: getVerticalSize(
                                                        16,
                                                      ),
                                                      width: getHorizontalSize(
                                                        15,
                                                      ),
                                                      margin: getMargin(
                                                        left: 3,
                                                        bottom: 1,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgPaseador,
                                            height: getVerticalSize(
                                              108,
                                            ),
                                            width: getHorizontalSize(
                                              112,
                                            ),
                                            radius: BorderRadius.circular(
                                              getHorizontalSize(
                                                56,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 11,
                                        top: 18,
                                        right: 6,
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
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
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
                                              borderRadius: BorderRadiusStyle
                                                  .txtRoundedBorder8,
                                            ),
                                            child: Text(
                                              "Nombre",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium15Bluegray400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 18,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                            controller: cpinputController,
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
                                    Padding(
                                      padding: getPadding(
                                        left: 11,
                                        top: 17,
                                        right: 6,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20,
                                            ),
                                          ),
                                          Expanded(
                                            child: CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller: phoneinputController,
                                              hintText: "Teléfono",
                                              margin: getMargin(
                                                left: 7,
                                              ),
                                              padding: TextFormFieldPadding
                                                  .PaddingT6,
                                              textInputAction:
                                                  TextInputAction.done,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 17,
                                      ),
                                      child: Text(
                                        "CITA:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtArtographieMedium30,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 70,
                                          top: 18,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Duración:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium16,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 8,
                                              ),
                                              child: Text(
                                                "0 horas y 21 min",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanMedium15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 18,
                                      ),
/*                                       child: ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                            height: getVerticalSize(
                                              20,
                                            ),
                                          );
                                        },
                                        itemCount: 2,
                                        itemBuilder: (context, index) {
                                          return PaseoduenioprogItemWidget();
                                        },
                                      ), */
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 20,
                                      ),
                                      child: Text(
                                        "Lugar:",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanBold15,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 7,
                                      ),
                                      child: Text(
                                        "Álamo 212, Naucalpan de Juárez, Santa Cruz",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtUrbanistRomanMedium15,
                                      ),
                                    ),
                                    Container(
                                      height: getVerticalSize(
                                        44,
                                      ),
                                      width: getHorizontalSize(
                                        293,
                                      ),
                                      margin: getMargin(
                                        top: 25,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                              height: getVerticalSize(
                                                43,
                                              ),
                                              width: getHorizontalSize(
                                                293,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.lightGreen200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    21,
                                                  ),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: ColorConstant
                                                        .black9003f,
                                                    spreadRadius:
                                                        getHorizontalSize(
                                                      2,
                                                    ),
                                                    blurRadius:
                                                        getHorizontalSize(
                                                      2,
                                                    ),
                                                    offset: Offset(
                                                      0,
                                                      4,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              width: getHorizontalSize(
                                                252,
                                              ),
                                              child: Text(
                                                "Nota: El recorrido aun no acaba por lo que el costo y duración puede variar",
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtUrbanistRomanSemiBold15,
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
            ],
          ),
        ),
      ),
    );
  }
}
