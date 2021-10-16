import 'package:agioapp/app/modules/login/presenter/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
  ];
}
