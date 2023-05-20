import 'bloc/olvidar_contrasenia_bloc.dart';
import 'models/olvidar_contrasenia_model.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class OlvidarContraseniaScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OlvidarContraseniaBloc>(
      create: (context) => OlvidarContraseniaBloc(OlvidarContraseniaState(
        olvidarContraseniaModelObj: OlvidarContraseniaModel(),
      ))
        ..add(OlvidarContraseniaInitialEvent()),
      child: OlvidarContraseniaScreen(),
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              CustomIconButton(
                height: 41,
                width: 41,
                margin: getMargin(
                  left: 22,
                  top: 10,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgArrowleft,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  177,
                ),
                margin: getMargin(
                  left: 20,
                  top: 11,
                ),
                child: Text(
                  "msg_olvidaste_tu_contrase_a".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold30,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  294,
                ),
                margin: getMargin(
                  left: 22,
                  top: 17,
                  right: 58,
                ),
                child: Text(
                  "msg_no_te_preocupes".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanMedium16,
                ),
              ),
              BlocSelector<OlvidarContraseniaBloc, OlvidarContraseniaState,
                  TextEditingController?>(
                selector: (state) => state.enteryouremailController,
                builder: (context, enteryouremailController) {
                  return CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: enteryouremailController,
                    hintText: "msg_ingresar_correo".tr,
                    margin: getMargin(
                      left: 20,
                      top: 20,
                      right: 24,
                    ),
                    variant: TextFormFieldVariant.OutlineIndigo50_1,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                  );
                },
              ),
              CustomButton(
                height: getVerticalSize(
                  56,
                ),
                text: "lbl_enviar".tr,
                margin: getMargin(
                  left: 20,
                  top: 27,
                  right: 24,
                ),
                padding: ButtonPadding.PaddingAll19,
                alignment: Alignment.center,
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_ya_recordaste_tu2".tr,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                          letterSpacing: getHorizontalSize(
                            0.15,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "lbl_ingresa_aqu".tr,
                        style: TextStyle(
                          color: ColorConstant.orangeA200,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          letterSpacing: getHorizontalSize(
                            0.15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
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
                margin: getMargin(
                  top: 6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
