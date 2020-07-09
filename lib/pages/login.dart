import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  bool clickedSignIn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
      ),
    );
  }

  Padding buildBody() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 0, 30, 30),
      child: ListView(
        children: <Widget>[
          buildVerticalSpace(70),
          buildTopTitle(),
          buildVerticalSpace(30),
          buildTitle(),
          buildVerticalSpace(30),
          buildForm(),
        ],
      ),
    );
  }

  SizedBox buildVerticalSpace(double size) => SizedBox(height: size);

  Column buildTopTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildAppName(),
        buildVerticalSpace(10),
        Text(
          "Employee Login",
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Row buildAppName() {
    return Row(
      children: <Widget>[
        Text(
          "Hysys",
          style: TextStyle(
              color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.blue,
          size: 18,
        ),
      ],
    );
  }

  Column buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Welcome!",
          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          "Please Sign-in to continue",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Form buildForm() {
    return Form(
        key: _formKey,
        autovalidate: clickedSignIn,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: validatorEmail,
              decoration: buildInputDecoration(
                label: "Email address",
              ),
            ),
            buildVerticalSpace(10),
            TextFormField(
              validator: validatorPassword,
              decoration: buildInputDecoration(
                label: "Password",
                suffix: buildForgotPasswordText(),
              ),
            ),
            buildVerticalSpace(30),
            Align(
              alignment: Alignment.centerLeft,
              child: buildSigninButton(),
            ),
          ],
        ));
  }

  String validatorEmail(String value) {
    if(value.isEmpty){
      return "Please enter your email address";
    }
    return null;
  }

  String validatorPassword(String value) {
    if(value.isEmpty){
      return "Please enter your password";
    }
    if(value.length < 8){
      return "Password must be at least 8 characters!";
    }
    return null;
  }

  RaisedButton buildSigninButton() {
    return RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        onPressed: () {
          setState(() {
            clickedSignIn = true;
          });
        });
  }

  InputDecoration buildInputDecoration({String label, Widget suffix}) {
    return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: label,
      labelStyle: TextStyle(
        color: Colors.black45,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      suffix: suffix,
    );
  }

  InkWell buildForgotPasswordText() {
    return InkWell(
      onTap: () {},
      child: Text(
        "Forgot Password ?",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }
}
