import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DebtList extends StatefulWidget {
  final List<String> debts;

  const DebtList({required this.debts});

  @override
  _DebtListState createState() => _DebtListState();
}

class _DebtListState extends State<DebtList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: widget.debts.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return _makeTile(widget.debts[index], context, index);
        }
    );
  }

  Container _makeTile(String debt, BuildContext context, int index) {
    return Container(
      height: 100,
      width: 50,
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text("User photo"),
              const SizedBox(height: 32),
              Text("Loan value")
            ],
          ),
        ),
      ),
    );
  }
}