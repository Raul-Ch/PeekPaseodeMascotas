import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class PerfilpaseadorcitasScreen extends StatelessWidget {
  final String paseadoresList;

  PerfilpaseadorcitasScreen({required this.paseadoresList});

  TextEditingController rateamountController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController postalcodeController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController municipalityController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController commentsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(paseadoresList);
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
        body: SizedBox(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: getPadding(
                    left: 22,
                    top: 0,
                    right: 22,
                    bottom: 50,
                  ),
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
                      CustomButton(
                        onTap: () {
                          //Navigator.pop(context);
                          Navigator.pushNamed(
                              context, AppRoutes.agendarcitaScreen);
                        },
                        height: getVerticalSize(
                          42,
                        ),
                        width: getHorizontalSize(
                          135,
                        ),
                        text: "¡Agendame!",
                        variant: ButtonVariant.OutlineBlack9003f_2,
                        shape: ButtonShape.RoundedBorder19,
                        fontStyle: ButtonFontStyle.UrbanistRomanSemiBold20,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                          top: 22,
                          right: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                                bottom: 30,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "¡Tú!",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
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
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: getVerticalSize(
                                    43,
                                  ),
                                  width: getHorizontalSize(
                                    109,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Calificación",
                                                style: TextStyle(
                                                  color: ColorConstant.gray900,
                                                  fontSize: getFontSize(
                                                    20,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ": ",
                                                style: TextStyle(
                                                  color: ColorConstant.gray900,
                                                  fontSize: getFontSize(
                                                    20,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      /*  Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 8,
                                          ),
                                          child: Row(
                                            children: [
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgStar12,
                                                height: getVerticalSize(
                                                  18,
                                                ),
                                                width: getHorizontalSize(
                                                  16,
                                                ),
                                                radius: BorderRadius.circular(
                                                  getHorizontalSize(
                                                    1,
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgStar22,
                                                height: getVerticalSize(
                                                  18,
                                                ),
                                                width: getHorizontalSize(
                                                  16,
                                                ),
                                                radius: BorderRadius.circular(
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
                                                    ImageConstant.imgStar42,
                                                height: getVerticalSize(
                                                  18,
                                                ),
                                                width: getHorizontalSize(
                                                  16,
                                                ),
                                                radius: BorderRadius.circular(
                                                  getHorizontalSize(
                                                    1,
                                                  ),
                                                ),
                                                margin: getMargin(
                                                  left: 3,
                                                ),
                                              ),
                                              Container(
                                                height: getVerticalSize(
                                                  18,
                                                ),
                                                width: getHorizontalSize(
                                                  27,
                                                ),
                                                margin: getMargin(
                                                  left: 3,
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  children: [
                                                    CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgPlay,
                                                      height: getVerticalSize(
                                                        16,
                                                      ),
                                                      width: getHorizontalSize(
                                                        15,
                                                      ),
                                                      alignment:
                                                          Alignment.topRight,
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar32,
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
                                                      alignment:
                                                          Alignment.centerLeft,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ), */
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 11,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
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
                                            style:
                                                AppStyle.txtUrbanistRomanBold20,
                                          ),
                                        ),
                                        CustomTextFormField(
                                          width: getHorizontalSize(
                                            110,
                                          ),
                                          focusNode: FocusNode(),
                                          controller: rateamountController,
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
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 39,
                                          bottom: 5,
                                        ),
                                        child: Text(
                                          "Exp:",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold20,
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          135,
                                        ),
                                        margin: getMargin(
                                          left: 10,
                                        ),
                                        padding: getPadding(
                                          left: 5,
                                          top: 8,
                                          right: 5,
                                          bottom: 50,
                                        ),
                                        decoration: AppDecoration
                                            .txtOutlineIndigo50
                                            .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtRoundedBorder8,
                                        ),
                                        child: Text(
                                          "Experiencia",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistRomanMedium15Bluegray400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 9,
                          right: 7,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                style: AppStyle
                                    .txtUrbanistRomanMedium15Bluegray400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 11,
                            top: 3,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Edad:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 109,
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
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 4,
                          right: 7,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                            Expanded(
                              child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: phonenumberController,
                                hintText: "Teléfono",
                                margin: getMargin(
                                  left: 7,
                                ),
                                padding: TextFormFieldPadding.PaddingT6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 12,
                          top: 7,
                          right: 7,
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
                              controller: postalcodeController,
                              hintText: "Código Postal",
                              margin: getMargin(
                                left: 6,
                              ),
                              padding: TextFormFieldPadding.PaddingT6,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 11,
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
                                left: 5,
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
                          left: 10,
                          top: 8,
                          right: 7,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                            Expanded(
                              child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: streetController,
                                hintText: "Calle",
                                margin: getMargin(
                                  left: 6,
                                ),
                                variant: TextFormFieldVariant.OutlineIndigo50_1,
                                padding: TextFormFieldPadding.PaddingT6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 7,
                          right: 7,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                              margin: getMargin(
                                left: 5,
                              ),
                              padding: TextFormFieldPadding.PaddingT6,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 9,
                          right: 7,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                            Expanded(
                              child: CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: cityController,
                                hintText: "Ciudad",
                                margin: getMargin(
                                  left: 4,
                                ),
                                padding: TextFormFieldPadding.PaddingT6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            right: 10,
                            bottom: 50,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 12,
                                  bottom: 5,
                                ),
                                child: Text(
                                  "Comentarios:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20,
                                ),
                              ),
                              CustomTextFormField(
                                width: getHorizontalSize(
                                  184,
                                ),
                                focusNode: FocusNode(),
                                controller: commentsController,
                                hintText: "Fue muy atento...",
                                variant: TextFormFieldVariant.OutlineBlack9003f,
                                padding: TextFormFieldPadding.PaddingAll12,
                                fontStyle: TextFormFieldFontStyle
                                    .MontserratAlternatesSemiBold15,
                                textInputAction: TextInputAction.done,
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
                    const Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgframe,
                      height: getVerticalSize(
                        32,
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
