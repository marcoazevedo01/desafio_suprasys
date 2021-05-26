import 'package:desafio_suprasys/app/components/text_component.dart';
import 'package:flutter/material.dart';

class ListCategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int indexColor = 0;
    final colorList = <Color>[
      Color(0xFFfff5f4),
      Color(0xFFd2d1ff),
      Color(0xFFffd8d9),
      Color(0xFFfff9e1),
      Color(0xFFd4f1ff),
      Color(0xFFcfffe2),
      Color(0xFFffe2c8),
    ];
    final colorListFont = <Color>[
      Color(0xFFe0613c),
      Color(0xFF9c78d3),
      Color(0xFFcf4125),
      Color(0xFFeeaa48),
      Color(0xFF44aae0),
      Color(0xFF30b776),
      Color(0xFFe15d2b),
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
