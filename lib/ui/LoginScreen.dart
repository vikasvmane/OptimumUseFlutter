import 'package:flutter/material.dart';
import 'package:optimum_use_flutter/Utils/Utils.dart';

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

  // final formKey = GlobalKey<FormState>();
  String? emailErrorMsg = "";
  String? passwordErrorMsg = "";
  bool isEnable = false;

  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      setState(() {
        if (!Utils.isEmail(emailController.value.text)) {
          emailErrorMsg = "Enter valid email address";
        } else {
          emailErrorMsg = null;
        }
      });
    });
    passwordController.addListener(() {
      setState(() {
        if (passwordController.value.text.length < 4) {
          passwordErrorMsg = "Password should be greater than 4 character";
          isEnable = false;
        } else {
          passwordErrorMsg = null;
          isEnable = true;
        }
      });
    });
  }

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
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Email Address",
                  hintText: "Email Address",
                  errorText: emailErrorMsg,
                ),
                keyboardType: TextInputType.emailAddress,
              )),
          Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Password",
                  errorText: passwordErrorMsg,
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
                    onPressed: isEnable ? () {} : null,
                    child: const Text("Login")),
              )),
        ],
      ),
    ));
  }
}
