import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/widgets/text_widgets.dart';

class DailyThemeWidget extends StatelessWidget {
  const DailyThemeWidget(
      {Key key, @required this.theme, @required this.onPressed})
      : super(key: key);
  final String theme;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      padding: const EdgeInsets.only(bottom: 16.0),
      color: Theme.of(context).indicatorColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    NewsTextWidget(
                      text: 'Тема дня:',
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: onPressed,
                ),
              ],
            ),
          ),
          TitleWidget(
            title: theme,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
