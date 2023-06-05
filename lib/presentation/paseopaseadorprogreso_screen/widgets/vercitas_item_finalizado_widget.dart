import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

// ignore: must_be_immutable
class ListcostoItemWidget extends StatelessWidget {
  const ListcostoItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanMedium16,
            ),
          ),
          const Spacer(
            flex: 48,
          ),
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanMedium15,
            ),
          ),
          const Spacer(
            flex: 51,
          ),
          Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanMedium16,
          ),
          Padding(
            padding: getPadding(
              left: 27,
              bottom: 2,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanMedium15,
            ),
          ),
        ],
      ),
    );
  }
}
