import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login_example/view/space.dart';

class LoginTopTitle extends StatelessWidget {
  ///
  ///
  /// Maybe company name
  final String appName;

  ///
  ///
  ///TODO : name it correctly
  final IconData iconData;

  ///
  ///
  ///Sub title
  final String secondaryText;

  const LoginTopTitle({
    Key key,
    this.appName,
    this.iconData,
    this.secondaryText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildAppName(),
        Space.all(10),
        buildSecondaryText(),
      ],
    );
  }

  Row buildAppName() {
    return Row(
      children: <Widget>[
        Text(
          appName,
          style: TextStyle(
              color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Icon(
          iconData,
          color: Colors.blue,
          size: 18,
        ),
      ],
    );
  }

  Text buildSecondaryText() {
    return Text(
      secondaryText,
      style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
    );
  }
}
