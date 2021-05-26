import 'package:desafio_suprasys/app/components/text_field_component.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 18, 10, 10),
        child: TextFieldComponent(
          inputBorder: InputBorder.none,
          heightTextField: 30,
          prefixIcon: Icons.search,
          sizeIcon: 15,
          hintText: "Procurar",
          fontSize: 12,
          borderRadius: 30,
          borderColor: Color(0xFFfdfffe),
          shadowColor: Color(0xFFededed),
          spreadRadius: 1,
          blurRadius: 4,
          offsetX: 6,
          offsetY: 4,
        ),
      ),
    );
  }
}