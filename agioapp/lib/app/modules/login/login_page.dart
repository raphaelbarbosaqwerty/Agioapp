import 'package:agioapp/app/utils/atomic/atomic.dart';
import 'package:agioapp/app/utils/atomic/atoms/the_button/the_button_widget.dart';
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Welcome Back!',
                  style: textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Please sign in to your account',
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
                  height: 24,
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
                TheButtonWidget(
                  child: Text('Sign in'),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 12,
                ),
                TheButtonWidget(
                  icon: Image.asset(
                    'assets/images/icons/google.png',
                    height: 24.0,
                  ),
                  child: Text(
                    'Sign in with Google',
                    style: textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don´t have an Account? ',
                      style: textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Modular.to.pushNamed('/register');
                      },
                      child: Text(
                        'Sign Up',
                        style: textTheme.bodyText2?.copyWith(
                          color: Atomic.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
