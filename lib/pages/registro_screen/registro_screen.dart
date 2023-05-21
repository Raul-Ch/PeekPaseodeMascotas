import 'bloc/registro_bloc.dart';
import 'models/registro_model.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';

class RegistroScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<RegistroBloc>(
        create: (context) =>
            RegistroBloc(RegistroState(registroModelObj: RegistroModel()))
              ..add(RegistroInitialEvent()),
        child: RegistroScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistroBloc, RegistroState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgframe,
                            height: getVerticalSize(32),
                            width: getHorizontalSize(375)),
                        CustomIconButton(
                            height: 41,
                            width: 41,
                            margin: getMargin(left: 25, top: 13),
                            onTap: () {
                              onTapArrowLeft(context);
                            },
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowleft)),
                        Container(
                            width: getHorizontalSize(257),
                            margin: getMargin(left: 29, top: 12),
                            child: Text("msg_hola_reg_strate".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtKonnectRegular25)),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(left: 32, right: 24),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: CustomButton(
                                              height: getVerticalSize(37),
                                              text: "lbl_due_o".tr,
                                              margin: getMargin(right: 21),
                                              onTap: () {
                                                onTapDueo(context);
                                              })),
                                      Expanded(
                                          child: CustomButton(
                                              height: getVerticalSize(37),
                                              text: "lbl_paseador".tr,
                                              margin: getMargin(left: 21),
                                              onTap: () {
                                                onTapPaseador(context);
                                              }))
                                    ]))),
                        Spacer(),
                        Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtYatienesunacuenta(context);
                                },
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_ya_tienes_una_cuenta2".tr,
                                          style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(15),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w500,
                                              letterSpacing:
                                                  getHorizontalSize(0.15))),
                                      TextSpan(
                                          text: "lbl_ingresa_aqu".tr,
                                          style: TextStyle(
                                              color: ColorConstant.orangeA200,
                                              fontSize: getFontSize(15),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing:
                                                  getHorizontalSize(0.15)))
                                    ]),
                                    textAlign: TextAlign.left))),
                        CustomImageView(
                            imagePath: ImageConstant.imgframe,
                            height: getVerticalSize(32),
                            width: getHorizontalSize(375),
                            margin: getMargin(top: 20))
                      ]))));
    });
  }

  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapDueo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registroDuenioScreen,
    );
  }

  onTapPaseador(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registroPaseadorScreen,
    );
  }

  onTapTxtYatienesunacuenta(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
