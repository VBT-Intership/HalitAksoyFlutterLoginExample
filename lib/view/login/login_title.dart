import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginTitle extends StatelessWidget {
  final String primaryText;

  final String secondaryText;

  const LoginTitle({
    Key key,
    this.primaryText,
    this.secondaryText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildPrimaryText(),
        buildSecondaryText(),
      ],
    );
  }

  Text buildSecondaryText() {
    return Text(
      "Please Sign-in to continue",
      style: TextStyle(
        color: Colors.black54,
        fontSize: 18,
      ),
    );
  }

  Text buildPrimaryText() {
    return Text(
      "Welcome!",
      style: TextStyle(
        fontSize: 38,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
