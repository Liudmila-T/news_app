import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/widgets/child_age_widget.dart';
import 'package:news_app/widgets/photo_profile_widget.dart';
import 'package:news_app/widgets/text_widgets.dart';

import 'news_image_widget.dart';

class NewsItemWidget extends StatelessWidget {
  const NewsItemWidget({Key key, @required this.news}) : super(key: key);
  final News news;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      margin: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              PhotoProfileWidget(
                photoUrl: news.author.photoUrl,
              ),
              Text(news.author.name,
                  style: Theme.of(context).primaryTextTheme.headline4),
              Row(
                  children: news.author.children
                      .map(
                        (child) => ChildAgeWidget(
                          child: child,
                        ),
                      )
                      .toList()),
            ],
          ),
          if (news.imageUrl != null) NewsImageWidget(imagePath: news.imageUrl),
          TitleWidget(
            title: news.title,
            color: Theme.of(context).primaryColorDark,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                NewsTextWidget(
                  text: news.text,
                  color: Theme.of(context).primaryColorDark,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NewsTextWidget(
                      text: DateFormat('dd MMMM yyyy').format(news.date),
                      color: Theme.of(context).disabledColor,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Theme.of(context).disabledColor,
                          ),
                        ),
                        NewsTextWidget(
                          text: news.theme,
                          color: Theme.of(context).disabledColor,
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Theme.of(context).disabledColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
