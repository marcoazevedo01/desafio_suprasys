import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.to.navigate('/concluded');
      },
      child: Container(
        child: Center(
          child: Text(
            'Fechar Carrinho: 199,99',
            textScaleFactor: 1.3,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
          color: Colors.blueAccent,
          boxShadow: [
            BoxShadow(color: Colors.blueGrey, spreadRadius: 1),
          ],
        ),
        height: 50,
      ),
    );
  }
}