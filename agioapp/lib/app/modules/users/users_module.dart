import 'package:agioapp/app/modules/users/presenter/users_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/users_page.dart';

class UsersModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => UsersStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => UsersPage()),
  ];
}
