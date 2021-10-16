import 'package:agioapp/app/modules/users/domain/entities/customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NewUserPage extends StatefulWidget {
  final Customer? customer;
  NewUserPage({
    Key? key,
    this.customer,
  }) : super(key: key);

  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<NewUserPage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  _isCustomerValid ? 'Edit user - ${widget.customer?.name}' : 'Register a new user!',
                  style: textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 74,
                ),
                TextFormField(
                  controller: TextEditingController(),
                  style: textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Name',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: TextEditingController(),
                  style: textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Address',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pop();
        },
        child: Icon(Icons.done),
      ),
    );
  }

  bool get _isCustomerValid => widget.customer != null;
}
