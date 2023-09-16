import 'package:flutter/material.dart';

class WidgetImageAssets extends StatelessWidget {
  const WidgetImageAssets({Key? key, this.size}) : super(key: key);

  final double? size;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/logo.png',
      width: size,
      height: size,
    );
  }
}
