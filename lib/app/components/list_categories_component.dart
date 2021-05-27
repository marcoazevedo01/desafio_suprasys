import 'package:desafio_suprasys/app/components/text_component.dart';
import 'package:flutter/material.dart';

class ListCategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int indexColor = 0;
    final colorList = <Color>[
      Color(0xFFd4f1ff),
    ];
    final colorListFont = <Color>[
      Color(0xFF44aae0),    
    ];
    return Expanded(
      flex: 2,
      child: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            if (indexColor + 1 == colorList.length) {
              indexColor = 0;
            } else {
              indexColor++;
            }
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: MediaQuery.of(context).size.width / 5.5,
                  decoration: BoxDecoration(
                    color: colorList[indexColor],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 2),
                    alignment: Alignment.bottomCenter,
                    child: TextComponent(
                      text: "Categoria do produto",
                      color: colorListFont[indexColor],
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 2,
                  child: Transform.rotate(
                    angle: 3.14 / 3,
                    child: Image.asset(
                      'assets/images/category.webp',
                      scale: 5,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
