import 'package:desafio_suprasys/app/components/text_component.dart';
import 'package:flutter/material.dart';

class ElevatedButtonComponent extends StatelessWidget {
  ElevatedButtonComponent({
    this.height,
    this.width,
    this.color,
    this.borderRadius,
    this.text,
    this.textColor,
    this.fontWeight,
    this.onPressed,
    this.borderColor,
    this.elevation,
  });

  final double height;
  final double width;
  final Color color;
  final double borderRadius;
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final Function onPressed;
  final Color borderColor;
  final double elevation;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed == null ? () {} : onPressed,
        child: TextComponent(
          text: text,
          color: textColor,
          fontWeight: fontWeight,
        ),
        style: ElevatedButton.styleFrom(
          primary: color == null ? Colors.white : color,
          side: BorderSide(
              color: borderColor == null ? Colors.white : borderColor),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(borderRadius == null ? 0 : borderRadius),
          ),
          elevation: elevation == null ? 0 : elevation,
        ),
      ),
    );
  }
}