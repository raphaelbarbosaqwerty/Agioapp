import 'package:agioapp/app/modules/login/login_module.dart';
import 'package:agioapp/app/modules/register/register_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute('/register', module: RegisterModule()),
    ModuleRoute('/home', module: HomeModule()),
  ];
}
