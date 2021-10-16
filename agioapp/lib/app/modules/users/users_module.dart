import 'package:agioapp/app/modules/users/presenter/pages/new_user/new_user_page.dart';
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
    ChildRoute(Modular.initialRoute, child: (_, args) => UsersPage()),
    ChildRoute(
      '/new',
      child: (_, args) => NewUserPage(),
    ),
    ChildRoute(
      '/edit',
      child: (_, args) => NewUserPage(
        customer: args.data,
      ),
    ),
  ];
}
