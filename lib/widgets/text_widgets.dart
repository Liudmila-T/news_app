import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key key, @required this.title, @required this.color})
      : super(key: key);
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style:
            Theme.of(context).primaryTextTheme.headline1.copyWith(color: color),
      ),
    );
  }
}

class NewsTextWidget extends StatelessWidget {
  const NewsTextWidget({Key key, @required this.text, @required this.color})
      : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(text,
          maxLines: 4,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .primaryTextTheme
              .bodyText1
              .copyWith(color: color)),
    );
  }
}
