import 'package:desafio_suprasys/app/components/text_component.dart';
import 'package:desafio_suprasys/app/http_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DescriptionClientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future sale = HttpService.get_service('/api/venda/listar');
    return Expanded(
      flex: 4,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: TextComponent(
              text: "Vendas realizadas:",
              color: Colors.black,
              fontSize: 20,
              textAlign: TextAlign.start,
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: sale,
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
                  List saleData = snapshot.data;
                  return ListView.separated(
                    itemCount: saleData.length,
                    separatorBuilder: (context, index) => SizedBox(height: 05),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        height: 80,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey[50],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.date_range_sharp,
                                              color: Colors.blue,
                                            ),
                                            TextComponent(
                                              text: DateFormat("dd/MM/yyyy").format(DateTime.parse(saleData[index]['data'])),
                                              color: Colors.black,
                                              fontSize: 19,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.monetization_on_outlined,
                                              color: Colors.green,
                                            ),
                                            TextComponent(
                                              text: "${saleData[index]['total']}",
                                              color: Colors.black,
                                              fontSize: 19,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    TextComponent(
                                      text: 'Id: ${saleData[index]['id']}',
                                      color: Colors.black,
                                      fontSize: 11,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextComponent(
                                          text: "Status",
                                          color: Color(0xFF767587),
                                          fontSize: 12,
                                        ),
                                        TextComponent(
                                          text: "itens: ${saleData[index]['itens'].length}",
                                          color: Color(0xFF767587),
                                          fontSize: 12,
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
