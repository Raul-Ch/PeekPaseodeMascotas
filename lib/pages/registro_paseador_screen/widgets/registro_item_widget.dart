import '../models/registro_item_model.dart';
import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

// ignore: must_be_immutable
class RegistroItemWidget extends StatelessWidget {
  RegistroItemWidget(this.registroItemModelObj);

  RegistroItemModel registroItemModelObj;

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
            registroItemModelObj.doTxt,
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
            registroItemModelObj.lunTxt,
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
            registroItemModelObj.marTxt,
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
            registroItemModelObj.mierTxt,
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
            registroItemModelObj.jueTxt,
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
            registroItemModelObj.vieTxt,
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
            registroItemModelObj.sabTxt,
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
