import 'package:flutter/widgets.dart';

abstract class BaseLoginState<T extends StatefulWidget> extends State<T> {
  final formKey = GlobalKey<FormState>();

  bool clickedButton = false;

  @override
  Widget build(BuildContext context);

  Widget buildForm();
}
