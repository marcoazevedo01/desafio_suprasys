import 'package:desafio_suprasys/app/components/floating_action_button_component.dart';
import 'package:desafio_suprasys/app/components/list_categories_component.dart';
import 'package:desafio_suprasys/app/components/search_bar_components.dart';
import 'package:desafio_suprasys/app/modules/products/widgets/products_widget.dart';
import 'package:desafio_suprasys/app/modules/products/widgets/top_products_widget.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButtonComponent(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            TopPageProductsWidget(),
            const SizedBox(
              height: 15,
            ),
            SearchBarWidget(),
            const SizedBox(
              height: 15,
            ),
            ListCategoriesWidget(),
            ProductsWidget(),
          ],
        ),
      ),
    );
  }
}
