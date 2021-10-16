import 'package:agioapp/app/modules/home/balancechart/balance_chart.dart';
import 'package:agioapp/app/modules/home/list/debt_list.dart';
import 'package:agioapp/app/utils/atomic/atomic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Balance",
          style: textTheme.bodyText1
              ?.copyWith(fontSize: 20, color: Colors.white),
        ),
        centerTitle: false,
        elevation: 0,
        actions: [
          Icon(
            Icons.more_vert_outlined,
            size: 24,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                child: BalanceChart(balanceData: store.getBalanceData()),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Divider(
                  height: 1,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: DebtList(debts: store.debtList),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Sexo");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
