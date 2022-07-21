import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white54,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email Address",
                  hintText: "Email Address",
                ),
                keyboardType: TextInputType.emailAddress,
              )),
          Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Password",
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              )),
          Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                    onPressed: () {
                      print("Password :: " +
                          passwordController.text +
                          " emailController::" +
                          emailController.text);
                    },
                    child: const Text("Login")),
              )),
        ],
      ),
    ));
  }
}
