import 'package:desafio_suprasys/app/modules/splashscreen/splashscreen_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreenModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SplashScreenPage()),
  ];
}
