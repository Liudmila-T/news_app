import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/widgets/news_item_buttons_widget.dart';

import 'daily_theme_widget.dart';
import 'news_item_widget.dart';

class NewsFeedWidget extends StatelessWidget {
  const NewsFeedWidget(
      {Key key,
      @required this.onPressedLike,
      @required this.onPressedComment,
      @required this.onPressedShare,
      @required this.onPressedFavorite,
      @required this.onPressedCloseDailyTheme})
      : super(key: key);
  final GestureTapCallback onPressedLike;
  final GestureTapCallback onPressedComment;
  final GestureTapCallback onPressedShare;
  final GestureTapCallback onPressedFavorite;
  final GestureTapCallback onPressedCloseDailyTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DailyThemeWidget(
              theme: News.dailyTheme,
              onPressed: onPressedCloseDailyTheme,
            ),
            Column(
              children: News.listOfNews
                  .map(
                    (newsItem) => Column(
                      children: [
                        NewsItemWidget(news: newsItem),
                        NewsItemButtonsWidget(
                          news: newsItem,
                          onPressedLike: onPressedLike,
                          onPressedComment: onPressedComment,
                          onPressedShare: onPressedShare,
                          onPressedFavorite: onPressedFavorite,
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
