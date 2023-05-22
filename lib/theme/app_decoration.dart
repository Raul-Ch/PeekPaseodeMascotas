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
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.gray900,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
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
  static BoxDecoration get fillLightgreen200 => BoxDecoration(
        color: ColorConstant.lightGreen200,
      );
  static BoxDecoration get fillOrangeA200 => BoxDecoration(
        color: ColorConstant.orangeA200,
      );
  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get dark => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.gray900,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineBlack90066 => BoxDecoration();
  static BoxDecoration get fillLightgreen20001 => BoxDecoration(
        color: ColorConstant.lightGreen20001,
      );

  static BorderRadius roundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );

  static BorderRadius roundedBorder65 = BorderRadius.circular(
    getHorizontalSize(
      65,
    ),
  );

  static BorderRadius roundedBorder53 = BorderRadius.circular(
    getHorizontalSize(
      53,
    ),
  );

  static BorderRadius roundedBorder70 = BorderRadius.circular(
    getHorizontalSize(
      70,
    ),
  );

  static BorderRadius roundedBorder80 = BorderRadius.circular(
    getHorizontalSize(
      80,
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
