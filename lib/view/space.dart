import 'package:flutter/widgets.dart';

class Space extends StatelessWidget {
  final double width;

  final double height;

  Space({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  Space.all(double width) : this(width : width, height : width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: this.width, height: this.height);
  }
}
