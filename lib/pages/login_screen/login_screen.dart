import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
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
                          margin: getMargin(left: 23, top: 19),
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Container(
                          width: getHorizontalSize(281),
                          margin: getMargin(left: 23, top: 10, right: 70),
                          child: Text("msg_bienvenido_que".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKonnectRegular25)),
                      BlocSelector<LoginBloc, LoginState,
                              TextEditingController?>(
                          selector: (state) => state.emailController,
                          builder: (context, emailController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: emailController,
                                hintText: "msg_ingresa_tu_correo".tr,
                                margin: getMargin(left: 20, top: 50, right: 24),
                                alignment: Alignment.center);
                          }),
                      BlocSelector<LoginBloc, LoginState,
                              TextEditingController?>(
                          selector: (state) => state.passwordController,
                          builder: (context, passwordController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: passwordController,
                                hintText: "msg_ingresa_tu_contrase_a".tr,
                                margin: getMargin(left: 20, top: 15, right: 24),
                                variant: TextFormFieldVariant.OutlineIndigo50_1,
                                padding: TextFormFieldPadding.PaddingT19_1,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.center,
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 17,
                                        right: 16,
                                        bottom: 17),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgFluenteye20filled)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)));
                          }),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtOlvidastetcontr(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 15, right: 24),
                                  child: Text("msg_olvidaste_t_contrase_a".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanSemiBold14)))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_iniciar_sesi_n".tr,
                          margin: getMargin(left: 22, top: 67, right: 22),
                          padding: ButtonPadding.PaddingAll19,
                          fontStyle: ButtonFontStyle.UrbanistRomanMedium15,
                          alignment: Alignment.center),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            onTapTxtAnnotienesuna(context);
                          },
                          child: Padding(
                              padding: getPadding(left: 34),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_a_n_no_tienes_una2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.fromHex(
                                                "#1e232c"),
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.15))),
                                    TextSpan(
                                        text: "lbl_reg_strate_aqu".tr,
                                        style: TextStyle(
                                            color: ColorConstant.fromHex(
                                                "#fda541"),
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
                          margin: getMargin(top: 19))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapTxtOlvidastetcontr(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.olvidarContraseniaScreen,
    );
  }

  onTapTxtAnnotienesuna(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registroScreen,
    );
  }
}
