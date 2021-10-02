import 'package:agioapp/app/utils/atomic/atomic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(
            Icons.more_vert_outlined,
            size: 24,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text("R\$100",
                          style: textTheme.headline4
                              ?.copyWith(color: Atomic.profit)),
                    ),
                    Icon(
                      Icons.call_made,
                      color: Atomic.profit,
                      size: 32,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.south_west,
                        color: Atomic.fever,
                        size: 32,
                      ),
                    ),
                    Text("R\$50",
                        style:
                            textTheme.headline4?.copyWith(color: Atomic.fever))
                  ],
                )
              ],
            ),
            const SizedBox(height: 100),
            Text(
              "Sexo",
                style: textTheme.headline4
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
