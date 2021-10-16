import 'package:agioapp/app/utils/atomic/atoms/the_button/the_button_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:agioapp/app/modules/register/register_store.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key? key, this.title = 'RegisterPage'}) : super(key: key);
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final RegisterStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Create new account',
                  style: textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Please fill the form to continue',
                  style: textTheme.bodyText2?.copyWith(),
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
                    hintText: 'Full name',
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
                    hintText: 'Email Address',
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
                    hintText: 'Phone Number',
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
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                TheButtonWidget(
                  child: Text('Sign up'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
