import 'package:desafio_suprasys/app/modules/kart/widgets/bottom_navigation_bar_component.dart';
import 'package:desafio_suprasys/app/modules/kart/widgets/kart_list_widget.dart';
import 'package:desafio_suprasys/app/modules/products/widgets/top_products_widget.dart';
import 'package:flutter/material.dart';

class KartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      bottomNavigationBar: BottomNavigationBarComponent(),
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            TopPageProductsWidget(),
            KartListWidget(),
          ],
        ),
      ),
    );
  }
}
