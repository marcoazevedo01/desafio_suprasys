import 'package:desafio_suprasys/app/components/text_component.dart';
import 'package:desafio_suprasys/app/http_service.dart';
import 'package:desafio_suprasys/app/components/quantity_product_widget.dart';
import 'package:flutter/material.dart';

class ProductsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future products = HttpService.get_service('/api/produto/listar');
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
            child: FutureBuilder(
              future: products,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      "Erro ao acessar API",
                    ),
                  );
                }
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  List productsData = snapshot.data;
                  return ListView.separated(
                    itemCount: productsData.length,
                    separatorBuilder: (context, index) => SizedBox(height: 05),
                    itemBuilder: (context, index) {
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
                                      text: productsData[index]['nome'],
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'R\$ ${productsData[index]['valor']}',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.red,
                                            fontSize: 12,
                                          ),
                                        ),
                                        QuantityProductWidget(idProd:productsData[index]['id']),
                                      ],
                                    ),
                                    TextComponent(
                                      text: "R\$ ${productsData[index]['valor']-productsData[index]['desconto']}",
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
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
