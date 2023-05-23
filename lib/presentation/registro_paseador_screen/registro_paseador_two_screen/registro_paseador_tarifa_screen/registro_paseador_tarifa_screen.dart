import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';
import 'package:peek_app/presentation/registro_paseador_screen/registro_paseador_two_screen/registro_paseador_tarifa_screen/model/registro_paseador_tarifa.dart';
import 'package:peek_app/widgets/custom_button.dart';
import 'package:peek_app/widgets/custom_icon_button.dart';
import 'package:peek_app/widgets/custom_text_form_field.dart';

class RegistroPaseadorTarifaScreen extends StatefulWidget {
  const RegistroPaseadorTarifaScreen({Key? key}) : super(key: key);
  @override
  State<RegistroPaseadorTarifaScreen> createState() =>
      _RegistroPaseadorTarifaScreen();
}

class _RegistroPaseadorTarifaScreen
    extends State<RegistroPaseadorTarifaScreen> {
  final rateController = TextEditingController();
  final experienceController = TextEditingController();

  @override
  void dispose() {
    rateController.dispose();
    experienceController.dispose();
    super.dispose();
  }

  Future tarifanueva() async {
    try {
      addPaseadorLast(
        int.parse(rateController.text.trim()),
        experienceController.text.trim(),
      );
      Navigator.pushNamed(context, AppRoutes.loginScreen);
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
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
                        child: SizedBox(
                          width: getHorizontalSize(
                            278,
                          ),
                          child: Text(
                            "¡Hola! Regístrate para poder comenzar como paseador.",
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
                        onTap: () {
                          onTapBtnArrowleft(context);
                        },
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
                        text: "Tarifa establecida",
                        variant: ButtonVariant.FillIndigo50,
                      ),
/*                       CustomButton(
                        height: getVerticalSize(
                          37,
                        ),
                        width: getHorizontalSize(
                          138,
                        ),
                        text: "Soy Nuevo",
                        margin: getMargin(
                          left: 35,
                        ),
                      ), */
                    ],
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: rateController,
                hintText: "Tarifa",
                margin: getMargin(
                  left: 25,
                  top: 63,
                  right: 19,
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: experienceController,
                hintText: "Experiencia",
                margin: getMargin(
                  left: 24,
                  top: 66,
                  right: 20,
                ),
                variant: TextFormFieldVariant.OutlineIndigo50_1,
                textInputAction: TextInputAction.done,
              ),
              const Spacer(),
              CustomButton(
                height: getVerticalSize(
                  56,
                ),
                text: "Registrarme",
                onTap: tarifanueva,
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

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
