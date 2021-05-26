import 'package:desafio_suprasys/app/modules/kart/kart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FloatingActionButtonComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final kartController = Modular.get<KartController>();
    return Stack(
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blueGrey[100],
          child: Icon(
            Icons.shopping_cart_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Modular.to.pushNamed('/kart');
          },
        ),
        Positioned(
          right: 0,
          child: Container(
            alignment: Alignment.center,
            height: 22,
            width: 22,
            child: Observer(
              builder: (_) => Text(
                '${kartController.itens}',
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.redAccent,
            ),
          ),
        ),
      ],
    );
  }
}
