import 'package:desafio_suprasys/app/components/text_component.dart';
import 'package:desafio_suprasys/app/http_service.dart';
import 'package:desafio_suprasys/app/modules/infoClient/client_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StablishmentsHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final clientController = Modular.get<ClientController>();
    Future clients = HttpService.get_service('/api/cliente/listar');
    final size = MediaQuery.of(context).size;
    int indexColor = 0;
    final colorList = <Color>[
      Color(0xFFfff5f4),
      Color(0xFFd2d1ff),
      Color(0xFFffd8d9),
      Color(0xFFfff9e1),
      Color(0xFFd4f1ff),
      Color(0xFFcfffe2),
      Color(0xFFffe2c8),
    ];
    return Expanded(
      flex: 10,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: TextComponent(
              text: "Clientes",
              color: Colors.black,
              fontSize: 20,
              textAlign: TextAlign.start,
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: clients,
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
                  List clientsData = snapshot.data;
                  return ListView.separated(
                    itemCount: clientsData.length,
                    separatorBuilder: (context, index) => SizedBox(height: 05),
                    itemBuilder: (context, index) {
                      if (indexColor + 1 == colorList.length) {
                        indexColor = 0;
                      } else {
                        indexColor++;
                      }
                      return GestureDetector(
                        onTap: () {
                          clientController.setUser(clientsData[index]['id'],
                              clientsData[index]['nome']);
                          Modular.to.navigate('/products');
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 120,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: size.width / 5,
                                      height: size.height / 7.5,
                                      decoration: BoxDecoration(
                                        color: colorList[indexColor],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    Positioned(
                                      right: 4,
                                      top: 0,
                                      child: Image.asset(
                                        "assets/images/user.png",
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextComponent(
                                        text: clientsData[index]['nome'],
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextComponent(
                                            text:
                                                "${clientsData[index]['situacao']}",
                                            color: Color(0xFF767587),
                                            fontSize: 12,
                                          ),
                                          TextComponent(
                                            text: "Entrar",
                                            color: Color(0xFF767587),
                                            fontSize: 10,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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
