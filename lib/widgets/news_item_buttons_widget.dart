import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/widgets/icon_button_widget.dart';
import 'package:news_app/widgets/text_widgets.dart';

class NewsItemButtonsWidget extends StatelessWidget {
  const NewsItemButtonsWidget(
      {Key key,
      @required this.news,
      @required this.onPressedLike,
      @required this.onPressedComment,
      @required this.onPressedShare,
      @required this.onPressedFavorite})
      : super(key: key);
  final News news;
  final GestureTapCallback onPressedLike;
  final GestureTapCallback onPressedComment;
  final GestureTapCallback onPressedShare;
  final GestureTapCallback onPressedFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButtonWidget(
                path: 'images/like.png',
                onPressed: onPressedLike,
              ),
              NewsTextWidget(
                text: '${news.countLikes}',
                color: Theme.of(context).disabledColor,
              ),
              IconButtonWidget(
                path: 'images/comment.png',
                onPressed: onPressedComment,
              ),
              NewsTextWidget(
                text: '${news.countComments}',
                color: Theme.of(context).disabledColor,
              ),
              IconButtonWidget(
                path: 'images/share.png',
                onPressed: onPressedShare,
              ),
            ],
          ),
          IconButtonWidget(
            path: 'images/favorite.png',
            onPressed: onPressedFavorite,
          ),
        ],
      ),
    );
  }
}
