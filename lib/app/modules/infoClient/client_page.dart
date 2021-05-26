import 'package:desafio_suprasys/app/modules/infoClient/widgets/description_client_widget.dart';
import 'package:desafio_suprasys/app/modules/infoClient/widgets/top_client_widget.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopClientWidget(),
          DescriptionClientWidget(),
        ],
      ),
    );
  }
}
