import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuButtonWidget extends StatelessWidget {
  const MenuButtonWidget({Key key, this.onPressed}) : super(key: key);
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0),
      decoration: BoxDecoration(
          color: Theme.of(context).indicatorColor,
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: IconButton(
          icon: Icon(
            Icons.menu,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: onPressed),
    );
  }
}
