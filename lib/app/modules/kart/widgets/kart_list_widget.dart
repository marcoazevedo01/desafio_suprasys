import 'package:desafio_suprasys/app/components/text_component.dart';
import 'package:desafio_suprasys/app/components/quantity_product_widget.dart';
import 'package:desafio_suprasys/app/modules/products/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class KartListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsController = Modular.get<ProductsController>();
    return Expanded(
      flex: 10,
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            padding: EdgeInsets.only(left: 50, top: 10, bottom: 10),
            child: Row(
              children: [
                Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.white,
                ),
                TextComponent(
                  text: "Carrinho",
                  color: Colors.white,
                  fontSize: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Observer(
              builder: (context) => ListView.separated(
                itemCount: productsController.productList.length,
                separatorBuilder: (context, index) => SizedBox(height: 0),
                itemBuilder: (context, index) {
                  var kart = productsController.productList;
                  if (kart[index].quantidade > 0) {
                    return Container(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      height: 110,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/product.webp",
                              height: 65,
                              width: 65,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextComponent(
                                    text: "${kart[index].nome}",
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextComponent(
                                        text: "R\$${kart[index].valor - kart[index].desconto}",
                                        color: Color(0xFF3bd087),
                                        fontSize: 16,
                                      ),
                                      QuantityProductWidget(
                                        item: kart[index].id,
                                        index: index,
                                      ),
                                      Observer(
                                        builder: (_) => Text(
                                          'R\$${kart[index].total}',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 19),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
