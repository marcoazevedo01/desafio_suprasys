import 'package:desafio_suprasys/app/modules/infoClient/client_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TopClientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final clientController = Modular.get<ClientController>();
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blueAccent,
        padding: EdgeInsets.fromLTRB(7, 10, 15, 0),
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_outlined),
                      onPressed: () => Modular.to.pop('/products'),
                    ),
                    Image.asset('assets/images/user.png'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                padding: EdgeInsets.only(left: 40, bottom: 14),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Observer(
                      builder: (_) => Text(
                        '${clientController.userClient['nome']}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
