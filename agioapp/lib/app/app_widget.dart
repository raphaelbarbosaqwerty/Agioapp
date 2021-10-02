import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'utils/atomic/atomic.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgioApp',
      theme: Atomic.buildTheme(context),
      debugShowCheckedModeBanner: false,
    ).modular();
  }
}
