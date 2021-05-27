import 'package:desafio_suprasys/app/components/text_component.dart';
import 'package:desafio_suprasys/app/components/quantity_product_widget.dart';
import 'package:desafio_suprasys/app/modules/products/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsController = Modular.get<ProductsController>();
    productsController.getProducts();
    return Expanded(
      flex: 10,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: TextComponent(
              text: "Produtos",
              color: Colors.black,
              fontSize: 20,
              textAlign: TextAlign.start,
            ),
          ),
          Expanded(
            child: Observer(
              builder: (context) => ListView.builder(
                itemCount: productsController.productList.length,
                itemBuilder: (_, index) {
                  final products = productsController.productList;
                  return Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 110,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/product.webp",
                            height: 80,
                            width: 80,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextComponent(
                                  text: products[index].nome,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'R\$${products[index].valor}',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.red,
                                        fontSize: 12,
                                      ),
                                    ),
                                    QuantityProductWidget(
                                      item: products[index].id,
                                      index: index,
                                    ),
                                  ],
                                ),
                                TextComponent(
                                  text: "R\$${products[index].valor - products[index].desconto}",
                                  color: Colors.green,
                                  fontSize: 16,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
