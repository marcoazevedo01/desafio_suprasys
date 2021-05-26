import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AlertWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(110),
                    child: Image.asset(
                      "assets/images/concluded.webp",
                      height: 185,
                      width: 185,
                    ),
                  ),
                  Text('Seu pedido foi salvo!'),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () => Modular.to.navigate('/home'),
                          child: Text('Nova venda'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
