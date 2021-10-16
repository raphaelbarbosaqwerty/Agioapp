import 'package:flutter_modular/flutter_modular.dart';
import 'package:agioapp/app/modules/loan/presenter/loan_store.dart';
import 'package:flutter/material.dart';

class LoanPage extends StatefulWidget {
  final String title;
  const LoanPage({Key? key, this.title = 'LoanPage'}) : super(key: key);
  @override
  LoanPageState createState() => LoanPageState();
}

class LoanPageState extends State<LoanPage> {
  final LoanStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
