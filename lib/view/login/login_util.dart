import 'package:flutter/material.dart';

class LoginUtil {
  
  static String validatorEmail(String value) {
    if (value.isEmpty) {
      return "Please enter your email address";
    }
    return null;
  }

  static String validatorPassword(String value) {
    if (value.isEmpty) {
      return "Please enter your password";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters!";
    }
    return null;
  }

  static InputDecoration buildInputDecoration({String label, Widget suffix}) {
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
}
