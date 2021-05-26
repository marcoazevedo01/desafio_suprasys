import 'package:desafio_suprasys/app/modules/kart/kart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class QuantityProductWidget extends StatefulWidget {
  final int idProd;
  const QuantityProductWidget({Key key, this.idProd}) : super(key: key);
  @override
  _QuantityProductWidgetState createState() => _QuantityProductWidgetState();
}

class _QuantityProductWidgetState extends State<QuantityProductWidget> {
  @override
  Widget build(BuildContext context) {
    final kartController = KartController();
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: size.width / 150),
      height: 40,
      width: size.width / 3.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFe0e0e0),
            offset: Offset(0, 3),
            blurRadius: 05,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: IconButton(
                icon: Icon(
                  Icons.remove,
                  size: 20,
                ),
                onPressed: () {
                  kartController.removeProduct(widget.idProd);
                },
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFf1f1f1),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: double.infinity,
              alignment: Alignment.center,
              child: Observer(
                builder: (_) => Text(
                  '${kartController.qnt}',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  size: 20,
                ),
                onPressed: () {
                  kartController.addProduct(widget.idProd);
                },
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFf1f1f1),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
