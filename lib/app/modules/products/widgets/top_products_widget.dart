import 'package:desafio_suprasys/app/modules/products/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TopPageProductsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsController = Modular.get<ProductsController>();
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
        alignment: Alignment.center,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                if (Modular.to.path == '/products') {
                  productsController.clearList();
                }
                Modular.to.pop('/products');
              },
              icon: Icon(Icons.arrow_back_ios_outlined),
            ),
            Image.asset(
              "assets/images/logo.jpg",
              height: 50,
              width: 50,
            ),
            IconButton(
              onPressed: () => Modular.to.pushNamed('/client'),
              icon: Icon(Icons.account_circle),
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
