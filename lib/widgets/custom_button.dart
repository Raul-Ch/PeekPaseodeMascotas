import 'package:flutter/material.dart';
import 'package:peek_app/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.all(0.0),
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? const SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? const SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case ButtonPadding.PaddingAll19:
        return getPadding(
          all: 19,
        );
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      default:
        return getPadding(
          all: 9,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.White:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillIndigo50:
        return ColorConstant.indigo50;
      case ButtonVariant.OutlineIndigo50:
        return ColorConstant.gray100;
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.lightGreen20002;
      case ButtonVariant.OutlineBlack9003f_1:
        return ColorConstant.gray900;
      case ButtonVariant.OutlineBlack9003f_2:
        return ColorConstant.lightGreen20001;
      default:
        return ColorConstant.gray900;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.White:
        return BorderSide(
          color: ColorConstant.gray900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineIndigo50:
        return BorderSide(
          color: ColorConstant.indigo50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillGray900:
      case ButtonVariant.FillIndigo50:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.OutlineBlack9003f_2:
      case ButtonVariant.OutlineBlack9003f_1:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f_2:
        return ColorConstant.black9003f;
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.black9003f;
      case ButtonVariant.OutlineBlack9003f_1:
        return ColorConstant.black9003f;
      case ButtonVariant.FillGray900:
      case ButtonVariant.White:
      case ButtonVariant.FillIndigo50:
      case ButtonVariant.OutlineIndigo50:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder19:
        return BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        );
      case ButtonShape.RoundedBorder30:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
      case ButtonShape.RoundedBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.UrbanistRomanMedium15:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.UrbanistRomanSemiBold20:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistRomanMedium15Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.UrbanistRomanSemiBold25:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            25,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistRomanSemiBold25WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            25,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistRomanSemiBold15Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistRomanSemiBold15Indigo50:
        return TextStyle(
          color: ColorConstant.indigo50,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder8,
  RoundedBorder30,
  RoundedBorder15,
  RoundedBorder19,
}

enum ButtonPadding {
  PaddingAll9,
  PaddingAll15,
  PaddingAll19,
  PaddingAll6,
}

enum ButtonVariant {
  FillGray900,
  White,
  FillIndigo50,
  OutlineBlack9003f,
  OutlineIndigo50,
  OutlineBlack9003f_2,
  OutlineBlack9003f_1,
}

enum ButtonFontStyle {
  UrbanistRomanSemiBold15,
  UrbanistRomanMedium15,
  UrbanistRomanMedium15Gray900,
  UrbanistRomanSemiBold25,
  UrbanistRomanSemiBold25WhiteA700,
  UrbanistRomanSemiBold15Gray900,
  UrbanistRomanSemiBold15Indigo50,
  UrbanistRomanMedium15Bluegray400,
  UrbanistRomanSemiBold20,
}
