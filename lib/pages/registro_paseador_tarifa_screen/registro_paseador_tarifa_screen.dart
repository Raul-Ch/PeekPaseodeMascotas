import 'bloc/registro_paseador_tarifa_bloc.dart';
import 'models/registro_paseador_tarifa_model.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class RegistroPaseadorTarifaScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<RegistroPaseadorTarifaBloc>(
      create: (context) =>
          RegistroPaseadorTarifaBloc(RegistroPaseadorTarifaState(
        registroPaseadorTarifaModelObj: RegistroPaseadorTarifaModel(),
      ))
            ..add(RegistroPaseadorTarifaInitialEvent()),
      child: RegistroPaseadorTarifaScreen(),
    );
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
              CustomImageView(
                imagePath: ImageConstant.imgframe,
                height: getVerticalSize(
                  32,
                ),
                width: getHorizontalSize(
                  375,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: getVerticalSize(
                    142,
                  ),
                  width: getHorizontalSize(
                    278,
                  ),
                  margin: getMargin(
                    left: 27,
                    top: 8,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: getHorizontalSize(
                            278,
                          ),
                          child: Text(
                            "msg_hola_reg_strate3".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtKonnectRegular25,
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 41,
                        width: 41,
                        alignment: Alignment.topLeft,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 25,
                    top: 19,
                    right: 39,
                  ),
                  child: Row(
                    children: [
                      CustomButton(
                        height: getVerticalSize(
                          37,
                        ),
                        width: getHorizontalSize(
                          138,
                        ),
                        text: "msg_tarifa_establecida".tr,
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          37,
                        ),
                        width: getHorizontalSize(
                          138,
                        ),
                        text: "lbl_soy_nuevo".tr,
                        margin: getMargin(
                          left: 35,
                        ),
                        variant: ButtonVariant.FillIndigo50,
                      ),
                    ],
                  ),
                ),
              ),
              BlocSelector<RegistroPaseadorTarifaBloc,
                  RegistroPaseadorTarifaState, TextEditingController?>(
                selector: (state) => state.rateController,
                builder: (context, rateController) {
                  return CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: rateController,
                    hintText: "lbl_tarifa".tr,
                    margin: getMargin(
                      left: 25,
                      top: 63,
                      right: 19,
                    ),
                  );
                },
              ),
              BlocSelector<RegistroPaseadorTarifaBloc,
                  RegistroPaseadorTarifaState, TextEditingController?>(
                selector: (state) => state.experienceController,
                builder: (context, experienceController) {
                  return CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: experienceController,
                    hintText: "lbl_experiencia".tr,
                    margin: getMargin(
                      left: 24,
                      top: 66,
                      right: 20,
                    ),
                    variant: TextFormFieldVariant.OutlineIndigo50_1,
                    textInputAction: TextInputAction.done,
                  );
                },
              ),
              Spacer(),
              CustomButton(
                height: getVerticalSize(
                  56,
                ),
                text: "lbl_registrarme".tr,
                margin: getMargin(
                  left: 23,
                  right: 21,
                ),
                padding: ButtonPadding.PaddingAll19,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgframe,
                height: getVerticalSize(
                  32,
                ),
                width: getHorizontalSize(
                  375,
                ),
                margin: getMargin(
                  top: 53,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
