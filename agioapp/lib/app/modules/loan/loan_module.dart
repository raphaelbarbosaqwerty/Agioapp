import 'package:agioapp/app/modules/loan/presenter/loan_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/loan_page.dart';

class LoanModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoanStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoanPage()),
  ];
}
