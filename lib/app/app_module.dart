import 'package:desafio_suprasys/app/modules/home/home_page.dart';
import 'package:desafio_suprasys/app/modules/kart/kart_controller.dart';
import 'package:desafio_suprasys/app/modules/kart/kart_page.dart';
import 'package:desafio_suprasys/app/modules/infoClient/client_controller.dart';
import 'package:desafio_suprasys/app/modules/infoClient/client_page.dart';
import 'package:desafio_suprasys/app/modules/kart/widgets/alert_widget.dart';
import 'package:desafio_suprasys/app/modules/products/products_controller.dart';
import 'package:desafio_suprasys/app/modules/products/products_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/splashscreen/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind((i) => ClientController()),
    Bind((i) => ProductsController()),
    Bind((i) => KartController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashScreenModule()),
    ChildRoute('/home', child: (_, args) => HomePage()),
    ChildRoute('/products', child: (_, args) => ProductsPage()),
    ChildRoute('/client', child: (_, args) => ClientPage()),
    ChildRoute('/kart', child: (_, args) => KartPage()),
    ChildRoute('/concluded', child: (_, args) => AlertWidget()),
  ];
}
