import '../registro_paseador_screen/widgets/registro_item_widget.dart';
import 'bloc/registro_paseador_bloc.dart';
import 'models/registro_item_model.dart';
import 'models/registro_paseador_model.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class RegistroPaseadorScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<RegistroPaseadorBloc>(
        create: (context) => RegistroPaseadorBloc(RegistroPaseadorState(
            registroPaseadorModelObj: RegistroPaseadorModel()))
          ..add(RegistroPaseadorInitialEvent()),
        child: RegistroPaseadorScreen());
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
                                height: getVerticalSize(32),
                                width: getHorizontalSize(375)),
                            CustomIconButton(
                                height: 41,
                                width: 41,
                                margin: getMargin(left: 19, top: 11),
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
                                        getPadding(left: 28, top: 7, right: 28),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomButton(
                                                  height: getVerticalSize(37),
                                                  text: "lbl_due_o".tr,
                                                  margin:
                                                      getMargin(right: 21))),
                                          Expanded(
                                              child: CustomButton(
                                                  height: getVerticalSize(37),
                                                  text: "lbl_paseador".tr,
                                                  margin: getMargin(left: 21),
                                                  variant: ButtonVariant
                                                      .FillIndigo50))
                                        ]))),
                            BlocSelector<
                                    RegistroPaseadorBloc,
                                    RegistroPaseadorState,
                                    TextEditingController?>(
                                selector: (state) => state.nameinputController,
                                builder: (context, nameinputController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: nameinputController,
                                      hintText: "lbl_nombre".tr,
                                      margin: getMargin(
                                          left: 24, top: 14, right: 20));
                                }),
                            BlocSelector<
                                    RegistroPaseadorBloc,
                                    RegistroPaseadorState,
                                    TextEditingController?>(
                                selector: (state) =>
                                    state.apellido1inputController,
                                builder: (context, apellido1inputController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: apellido1inputController,
                                      hintText: "msg_apellido_paterno".tr,
                                      margin: getMargin(
                                          left: 24, top: 12, right: 20));
                                }),
                            BlocSelector<
                                    RegistroPaseadorBloc,
                                    RegistroPaseadorState,
                                    TextEditingController?>(
                                selector: (state) =>
                                    state.apellido2inputController,
                                builder: (context, apellido2inputController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: apellido2inputController,
                                      hintText: "msg_apellido_materno".tr,
                                      margin: getMargin(
                                          left: 24, top: 12, right: 20),
                                      variant: TextFormFieldVariant
                                          .OutlineIndigo50_1);
                                }),
                            CustomImageView(
                                svgPath: ImageConstant.imgPasswordinput,
                                height: getVerticalSize(56),
                                width: getHorizontalSize(331),
                                radius:
                                    BorderRadius.circular(getHorizontalSize(8)),
                                margin: getMargin(top: 12)),
                            BlocSelector<
                                    RegistroPaseadorBloc,
                                    RegistroPaseadorState,
                                    TextEditingController?>(
                                selector: (state) =>
                                    state.confirmpasswordController,
                                builder: (context, confirmpasswordController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: confirmpasswordController,
                                      hintText: "msg_confirmar_contrase_a".tr,
                                      margin: getMargin(
                                          left: 22, top: 8, right: 22));
                                }),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 24, top: 25),
                                    child: Text("msg_selecciona_tu_fecha".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanMedium15))),
                            Container(
                                margin: getMargin(left: 13, top: 7, right: 13),
                                padding: getPadding(
                                    left: 19, top: 11, right: 19, bottom: 11),
                                decoration: AppDecoration.fillLightgreen20001,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 2, right: 16),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleftGray900,
                                                    height: getSize(24),
                                                    width: getSize(24)),
                                                Text("lbl_marzo_2023".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistRomanSemiBold20),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: getSize(24),
                                                    width: getSize(24))
                                              ])),
                                      Padding(
                                          padding: getPadding(left: 2, top: 32),
                                          child: BlocSelector<
                                                  RegistroPaseadorBloc,
                                                  RegistroPaseadorState,
                                                  RegistroPaseadorModel?>(
                                              selector: (state) => state
                                                  .registroPaseadorModelObj,
                                              builder: (context,
                                                  registroPaseadorModelObj) {
                                                return ListView.separated(
                                                    physics:
                                                        NeverScrollableScrollPhysics(),
                                                    shrinkWrap: true,
                                                    separatorBuilder:
                                                        (context, index) {
                                                      return SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  25));
                                                    },
                                                    itemCount:
                                                        registroPaseadorModelObj
                                                                ?.registroItemList
                                                                .length ??
                                                            0,
                                                    itemBuilder:
                                                        (context, index) {
                                                      RegistroItemModel model =
                                                          registroPaseadorModelObj
                                                                      ?.registroItemList[
                                                                  index] ??
                                                              RegistroItemModel();
                                                      return RegistroItemWidget(
                                                          model);
                                                    });
                                              }))
                                    ])),
                            BlocSelector<
                                    RegistroPaseadorBloc,
                                    RegistroPaseadorState,
                                    TextEditingController?>(
                                selector: (state) => state.phoneinputController,
                                builder: (context, phoneinputController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: phoneinputController,
                                      hintText: "lbl_tel_fono".tr,
                                      margin: getMargin(
                                          left: 22, top: 25, right: 22));
                                }),
                            BlocSelector<
                                    RegistroPaseadorBloc,
                                    RegistroPaseadorState,
                                    TextEditingController?>(
                                selector: (state) => state.cpinputController,
                                builder: (context, cpinputController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: cpinputController,
                                      hintText: "lbl_c_digo_postal".tr,
                                      margin: getMargin(
                                          left: 22, top: 12, right: 22));
                                }),
                            BlocSelector<
                                    RegistroPaseadorBloc,
                                    RegistroPaseadorState,
                                    TextEditingController?>(
                                selector: (state) =>
                                    state.streetnuminputController,
                                builder: (context, streetnuminputController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: streetnuminputController,
                                      hintText: "lbl_n_m_calle".tr,
                                      margin: getMargin(
                                          left: 22, top: 12, right: 22),
                                      variant: TextFormFieldVariant
                                          .OutlineIndigo50_1);
                                }),
                            BlocSelector<
                                    RegistroPaseadorBloc,
                                    RegistroPaseadorState,
                                    TextEditingController?>(
                                selector: (state) =>
                                    state.streetinputController,
                                builder: (context, streetinputController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: streetinputController,
                                      hintText: "lbl_calle".tr,
                                      margin: getMargin(
                                          left: 22, top: 12, right: 22),
                                      variant: TextFormFieldVariant
                                          .OutlineIndigo50_1);
                                }),
                            BlocSelector<
                                    RegistroPaseadorBloc,
                                    RegistroPaseadorState,
                                    TextEditingController?>(
                                selector: (state) => state.muninputController,
                                builder: (context, muninputController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: muninputController,
                                      hintText: "lbl_municipio".tr,
                                      margin: getMargin(
                                          left: 22, top: 13, right: 22));
                                }),
                            BlocSelector<
                                    RegistroPaseadorBloc,
                                    RegistroPaseadorState,
                                    TextEditingController?>(
                                selector: (state) => state.cityinputController,
                                builder: (context, cityinputController) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: cityinputController,
                                      hintText: "lbl_ciudad".tr,
                                      margin: getMargin(
                                          left: 22, top: 13, right: 22),
                                      textInputAction: TextInputAction.done);
                                }),
                            CustomButton(
                                height: getVerticalSize(56),
                                text: "lbl_siguiente".tr,
                                margin: getMargin(left: 22, top: 23, right: 22),
                                padding: ButtonPadding.PaddingAll19,
                                onTap: () {
                                  onTapSiguiente(context);
                                }),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtYatienesunacuenta(context);
                                },
                                child: Padding(
                                    padding: getPadding(top: 26),
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
                                width: getHorizontalSize(375),
                                margin: getMargin(top: 7))
                          ])))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapButtons(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registroDuenioScreen,
    );
  }

  onTapSiguiente(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registroPaseadorTwoScreen,
    );
  }

  onTapTxtYatienesunacuenta(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registroScreen,
    );
  }
}
