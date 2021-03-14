import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({Key key, this.path, this.onPressed})
      : super(key: key);
  final String path;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Image(
          image: AssetImage(path),
        ),
        onPressed: onPressed);
  }
}
