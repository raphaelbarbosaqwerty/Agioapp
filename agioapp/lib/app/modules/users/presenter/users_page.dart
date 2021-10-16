import 'package:agioapp/app/utils/atomic/atomic.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:agioapp/app/modules/users/presenter/users_store.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  final String title;
  const UsersPage({Key? key, this.title = 'Users'}) : super(key: key);
  @override
  UsersPageState createState() => UsersPageState();
}

class UsersPageState extends State<UsersPage> {
  final UsersStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemCount: store.customers.length,
          itemBuilder: (context, index) {
            var customer = store.customers[index];
            return InkWell(
              child: Card(
                color: Atomic.formField,
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Atomic.purple,
                  ),
                  title: Text(
                    customer.name,
                    style: textTheme.bodyText1,
                  ),
                  subtitle: Text(
                    customer.address,
                    style: textTheme.bodyText1,
                  ),
                ),
              ),
              onTap: () {
                Modular.to.pushNamed('/home/users/edit', arguments: customer);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed('/home/users/new');
        },
        child: Icon(
          Icons.person_add,
        ),
      ),
    );
  }
}
