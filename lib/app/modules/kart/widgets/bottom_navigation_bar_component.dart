import 'package:desafio_suprasys/app/modules/kart/kart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final kartController = Modular.get<KartController>();
    return GestureDetector(
      onTap: () {
        kartController.closeKart() == true ? Modular.to.navigate('/concluded') : Modular.to.popAndPushNamed('/kart');
      },
      child: Container(
        child: Center(
            child: Observer(
          builder: (_) => Text(
            'Fechar Carrinho: R\$${kartController.totalKart}',
            textScaleFactor: 1.3,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )),
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
