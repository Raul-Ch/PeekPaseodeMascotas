import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillLightgreen200 => BoxDecoration(
        color: ColorConstant.lightGreen200,
      );
  static BoxDecoration get fillOrangeA200 => BoxDecoration(
        color: ColorConstant.orangeA200,
      );
  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtOutlineBlack90066 => BoxDecoration();
  static BoxDecoration get fillLightgreen20001 => BoxDecoration(
        color: ColorConstant.lightGreen20001,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22,
    ),
  );

  static BorderRadius roundedBorder1 = BorderRadius.circular(
    getHorizontalSize(
      1,
    ),
  );

  static BorderRadius roundedBorder74 = BorderRadius.circular(
    getHorizontalSize(
      74,
    ),
  );

  static BorderRadius circleBorder38 = BorderRadius.circular(
    getHorizontalSize(
      38,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
