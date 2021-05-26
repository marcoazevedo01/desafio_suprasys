import 'package:desafio_suprasys/app/components/text_component.dart';
import 'package:flutter/material.dart';

class TopPageHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
        alignment: Alignment.center,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                TextComponent(
                  text: "Olá, ",
                  color: Colors.black,
                  fontSize: 20,
                ),
                TextComponent(
                  text: "Marco",
                  color: Colors.black,
                  fontSize: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
