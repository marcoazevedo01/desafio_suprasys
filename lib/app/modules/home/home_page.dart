import 'package:desafio_suprasys/app/components/search_bar_components.dart';
import 'package:desafio_suprasys/app/modules/home/widgets/stabilishments_home_widget.dart';
import 'package:desafio_suprasys/app/modules/home/widgets/top_home_widget.dart';
import 'package:desafio_suprasys/app/modules/products/products_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            //TopPageHomeWidget(),
            SearchBarWidget(),
            StablishmentsHomeWidget(),
          ],
        ),
      ),
    );
  }
}