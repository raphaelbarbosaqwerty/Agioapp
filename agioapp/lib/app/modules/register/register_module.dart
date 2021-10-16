import 'package:agioapp/app/modules/register/presenter/register_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/register_page.dart';

class RegisterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RegisterPage()),
  ];
}
