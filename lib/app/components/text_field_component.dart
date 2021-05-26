import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  TextFieldComponent({
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.labelColor,
    this.colorIcon,
    this.onChanged,
    this.sizeIcon,
    this.fontSize,
    this.heightTextField,
    this.inputBorder,
    this.borderRadius,
    this.borderColor,
    this.shadowColor,
    this.spreadRadius,
    this.blurRadius,
    this.offsetX,
    this.offsetY,
  });
  final IconData prefixIcon;
  final IconData suffixIcon;
  final String hintText;
  final Color labelColor;
  final Color colorIcon;
  final Function onChanged;
  final double sizeIcon;
  final double fontSize;
  final double heightTextField;
  final InputBorder inputBorder;
  final double borderRadius;
  final Color borderColor;
  final Color shadowColor;
  final double spreadRadius;
  final double blurRadius;
  final double offsetX;
  final double offsetY;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightTextField,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(borderRadius == null ? 0 : borderRadius),
        border: Border.all(
          color: borderColor,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor == null ? Colors.white : shadowColor,
            spreadRadius: spreadRadius == null ? 0 : 1,
            blurRadius: blurRadius == null ? 0 : 4,
            offset: offsetX == null
                ? Offset(0, 0)
                : offsetY == null
                    ? Offset(0, 0)
                    : Offset(offsetX, offsetY),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          border: inputBorder,
          prefixIcon: Icon(
            prefixIcon,
            color: colorIcon,
            size: sizeIcon,
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: fontSize),
          labelStyle: TextStyle(color: labelColor, fontSize: fontSize),
          suffixIcon: Icon(
            suffixIcon,
            color: colorIcon,
            size: sizeIcon,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}