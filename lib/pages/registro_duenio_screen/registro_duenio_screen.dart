import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

import 'bloc/registro_duenio_bloc.dart';
import 'models/registro_duenio_model.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class RegistroDuenioScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final nameinputController = TextEditingController();
  final apellido1inputController = TextEditingController();
  final phoneinputController = TextEditingController();
  final cpinputController = TextEditingController();
  final streetnuminputController = TextEditingController();
  final streetinputController = TextEditingController();
  final muninputController = TextEditingController();
  final cityinputController = TextEditingController();
  final passwordinputController = TextEditingController();
  final confirmpasswordinputController = TextEditingController();

  final dateController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    nameinputController.dispose();
    apellido1inputController.dispose();
    phoneinputController.dispose();
    cpinputController.dispose();
    streetnuminputController.dispose();
    streetinputController.dispose();
    muninputController.dispose();
    cityinputController.dispose();
    passwordinputController.dispose();
    confirmpasswordinputController.dispose();
    dateController.dispose();
    dispose();
  }

  bool passwordConfirm() {
    if (passwordinputController.text.trim() ==
        confirmpasswordinputController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  Future register() async {
    if (passwordConfirm()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordinputController.text.trim());

      addDuenioDetails(nameinputController.text.trim());
    }
  }

  static Widget builder(BuildContext context) {
    return BlocProvider<RegistroDuenioBloc>(
        create: (context) => RegistroDuenioBloc(
            RegistroDuenioState(registroDuenioModelObj: RegistroDuenioModel()))
          ..add(RegistroDuenioInitialEvent()),
        child: RegistroDuenioScreen());
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgframe,
                                height: getVerticalSize(30),
                                width: getHorizontalSize(375)),
                            CustomIconButton(
                                height: 41,
                                width: 41,
                                margin: getMargin(left: 19, top: 13),
                                alignment: Alignment.centerLeft,
                                onTap: () {
                                  onTapBtnArrowleft(context);
                                },
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: getHorizontalSize(257),
                                    margin: getMargin(left: 25, top: 7),
                                    child: Text("msg_hola_reg_strate".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtKonnectRegular25))),
                            GestureDetector(
                                onTap: () {
                                  onTapButtons(context);
                                },
                                child: Padding(
                                    padding:
                                        getPadding(left: 28, top: 9, right: 28),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomButton(
                                                  height: getVerticalSize(32),
                                                  text: "lbl_due_o".tr,
                                                  margin: getMargin(right: 21),
                                                  variant: ButtonVariant
                                                      .FillIndigo50)),
                                          Expanded(
                                              child: CustomButton(
                                                  height: getVerticalSize(32),
                                                  text: "lbl_paseador".tr,
                                                  margin: getMargin(left: 21)))
                                        ]))),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) => state.emailController,
                                builder: (context, emailController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: emailController,
                                      hintText: "lbl_correo".tr,
                                      margin: getMargin(
                                          left: 24, top: 19, right: 20));
                                }),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) => state.firstnameController,
                                builder: (context, firstnameController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: firstnameController,
                                      hintText: "lbl_nombre".tr,
                                      margin: getMargin(
                                          left: 24, top: 12, right: 20));
                                }),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) => state.lastnameController,
                                builder: (context, lastnameController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: lastnameController,
                                      hintText: "msg_apellido_paterno".tr,
                                      margin: getMargin(
                                          left: 24, top: 12, right: 20));
                                }),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) =>
                                    state.lastnameoneController,
                                builder: (context, lastnameoneController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: lastnameoneController,
                                      hintText: "msg_apellido_materno".tr,
                                      margin: getMargin(
                                          left: 24, top: 12, right: 20),
                                      variant: TextFormFieldVariant
                                          .OutlineIndigo50_1);
                                }),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) => state.passwordController,
                                builder: (context, passwordController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: passwordController,
                                      hintText: "lbl_contrase_a".tr,
                                      margin: getMargin(
                                          left: 24, top: 10, right: 20));
                                }),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) =>
                                    state.confirmpasswordController,
                                builder: (context, confirmpasswordController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: confirmpasswordController,
                                      hintText: "msg_confirmar_contrase_a".tr,
                                      margin: getMargin(
                                          left: 22, top: 10, right: 22));
                                }),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 22, top: 19),
                                    child: Text("msg_selecciona_tu_fecha".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanMedium15))),
                            Padding(
                                padding:
                                    getPadding(top: 6, left: 100, right: 100),
                                child: TextField(
                                    textAlign: TextAlign.center,
                                    controller: dateController,
                                    onTap: () {
                                      onTapFechaone(context);
                                    })),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) => state.phoneController,
                                builder: (context, phoneController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: phoneController,
                                      hintText: "lbl_tel_fono".tr,
                                      margin: getMargin(
                                          left: 24, top: 30, right: 20));
                                }),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) => state.zipcodeController,
                                builder: (context, zipcodeController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: zipcodeController,
                                      hintText: "lbl_c_digo_postal".tr,
                                      margin: getMargin(
                                          left: 24, top: 12, right: 20));
                                }),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) =>
                                    state.streetnumberController,
                                builder: (context, streetnumberController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: streetnumberController,
                                      hintText: "lbl_n_m_calle".tr,
                                      margin: getMargin(
                                          left: 24, top: 12, right: 20),
                                      variant: TextFormFieldVariant
                                          .OutlineIndigo50_1);
                                }),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) => state.streetController,
                                builder: (context, streetController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: streetController,
                                      hintText: "lbl_calle".tr,
                                      margin: getMargin(
                                          left: 24, top: 12, right: 20),
                                      variant: TextFormFieldVariant
                                          .OutlineIndigo50_1);
                                }),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) =>
                                    state.municipalityController,
                                builder: (context, municipalityController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: municipalityController,
                                      hintText: "lbl_municipio".tr,
                                      margin: getMargin(
                                          left: 24, top: 13, right: 20));
                                }),
                            BlocSelector<
                                    RegistroDuenioBloc,
                                    RegistroDuenioState,
                                    TextEditingController?>(
                                selector: (state) => state.cityController,
                                builder: (context, cityController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: cityController,
                                      hintText: "lbl_ciudad".tr,
                                      margin: getMargin(
                                          left: 24, top: 13, right: 20),
                                      textInputAction: TextInputAction.done);
                                }),
                            CustomButton(
                                height: getVerticalSize(48),
                                text: "lbl_registrarme".tr,
                                margin: getMargin(left: 24, top: 33, right: 20),
                                padding: ButtonPadding.PaddingAll15),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtYatienesunacuenta(context);
                                },
                                child: Padding(
                                    padding: getPadding(top: 16),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_ya_tienes_una_cuenta2"
                                                  .tr,
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
                                                  color:
                                                      ColorConstant.orangeA200,
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
                                width: getHorizontalSize(373),
                                margin: getMargin(top: 13))
                          ])))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapButtons(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registroPaseadorScreen,
    );
  }

  Future<void> onTapFechaone(BuildContext context) async {
    var initialState = BlocProvider.of<RegistroDuenioBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1970),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      dateController.text = DateFormat.yMd().format(pickedDate);
    });
  }

  onTapTxtYatienesunacuenta(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registroScreen,
    );
  }
}
