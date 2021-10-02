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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Wrap(
                  spacing: 20,
                  children: [
                    Text("Profit"),
                    Icon(
                        Icons.call_made,
                      color: Atomic.profit,
                    )
                  ],
                ),
                Wrap(
                  spacing: 20,
                  children: [
                    Icon(
                      Icons.south_west,
                      color: Atomic.fever,
                    ),
                    Text("Loaned")
                  ],
                )
              ],
            ),
            Text("AAAA"),
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
