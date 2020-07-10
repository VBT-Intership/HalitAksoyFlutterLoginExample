import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login_example/pages/base_login_state.dart';
import 'package:flutter_login_example/pages/sign_up.dart';
import 'package:flutter_login_example/view/login/login_button.dart';
import 'package:flutter_login_example/view/login/login_title.dart';
import 'package:flutter_login_example/view/login/login_top_title.dart';
import 'package:flutter_login_example/view/login/login_util.dart';
import 'package:flutter_login_example/view/space.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends BaseLoginState<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return ListView(
      padding: const EdgeInsets.fromLTRB(30.0, 0, 30, 30),
      children: <Widget>[
        Space.all(70),
        LoginTopTitle(
          appName: "Hysys",
          iconData: Icons.arrow_forward_ios,
          secondaryText: "Employee Login",
        ),
        Space.all(30),
        LoginTitle(
          primaryText: "Welcome!",
          secondaryText: "Please Sign-in to continue",
        ),
        Space.all(30),
        buildForm(),
      ],
    );
  }

  Form buildForm() {
    return Form(
      key: formKey,
      autovalidate: clickedButton,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: LoginUtil.validatorEmail,
            decoration: LoginUtil.buildInputDecoration(
              label: "Email address",
            ),
          ),
          Space.all(10),
          TextFormField(
            validator: LoginUtil.validatorPassword,
            decoration: LoginUtil.buildInputDecoration(
              label: "Password",
              suffix: buildForgotPasswordText(),
            ),
          ),
          Space.all(30),
          buildBottomButtons(),
        ],
      ),
    );
  }

  Row buildBottomButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        LoginButton(
          text: "Sign In",
          onTab: signIn,
        ),
        FlatButton(
          onPressed: gotoSignUp,
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }

  void signIn() {
    setState(() {
      clickedButton = true;
    });
  }

  void gotoSignUp() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return SignUpPage();
        },
      ),
    );
  }

  InkWell buildForgotPasswordText() {
    return InkWell(
      onTap: () {},
      child: Text(
        "Forgot Password ?",
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
