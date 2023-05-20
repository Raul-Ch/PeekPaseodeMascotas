import '../models/registro_duenio_item_model.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

// ignore: must_be_immutable
class RegistroDuenioItemWidget extends StatelessWidget {
  RegistroDuenioItemWidget(this.registroDuenioItemModelObj);

  RegistroDuenioItemModel registroDuenioItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Text(
            registroDuenioItemModelObj.doTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium12.copyWith(
              letterSpacing: getHorizontalSize(
                0.36,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 22,
          ),
          child: Text(
            registroDuenioItemModelObj.lunTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium12.copyWith(
              letterSpacing: getHorizontalSize(
                0.36,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 17,
          ),
          child: Text(
            registroDuenioItemModelObj.marTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium12.copyWith(
              letterSpacing: getHorizontalSize(
                0.36,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 14,
          ),
          child: Text(
            registroDuenioItemModelObj.mierTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium12.copyWith(
              letterSpacing: getHorizontalSize(
                0.36,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 17,
          ),
          child: Text(
            registroDuenioItemModelObj.jueTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium12.copyWith(
              letterSpacing: getHorizontalSize(
                0.36,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 24,
            bottom: 1,
          ),
          child: Text(
            registroDuenioItemModelObj.vieTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanMedium12.copyWith(
              letterSpacing: getHorizontalSize(
                0.36,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 23,
          ),
          child: Text(
            registroDuenioItemModelObj.sabTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoMedium12.copyWith(
              letterSpacing: getHorizontalSize(
                0.36,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
