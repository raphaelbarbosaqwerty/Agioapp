import 'package:flutter_modular/flutter_modular.dart';
import 'package:agioapp/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: <Widget>[
            Text(
              'Welcome Back!',
              style: textTheme.bodyText1?.copyWith(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Please sign in to your account',
              style: textTheme.bodyText2?.copyWith(),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              controller: TextEditingController(),
              style: textTheme.bodyText1?.copyWith(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: 'Email',
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
              height: 8,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: textTheme.bodyText2?.copyWith(),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Sign in'),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Sign in'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
