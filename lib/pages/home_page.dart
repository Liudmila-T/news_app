import 'package:flutter/material.dart';
import 'package:news_app/widgets/menu_button_widget.dart';
import 'package:news_app/widgets/news_feed_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('News'),
            titleTextStyle: Theme.of(context).primaryTextTheme.headline2,
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.location_on_sharp),
                onPressed: () => _search(),
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => _addLocation(),
              )
            ],
            leading: MenuButtonWidget(
              onPressed: () => _openMenu(),
            ),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 4,
              labelStyle: Theme.of(context).primaryTextTheme.headline2,
              unselectedLabelStyle:
                  Theme.of(context).primaryTextTheme.headline3,
              tabs: [
                Tab(text: 'Новые'),
                Tab(text: 'Популярные'),
                Tab(text: 'Подписки'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              NewsFeedWidget(
                onPressedLike: _addLike,
                onPressedComment: _comment,
                onPressedShare: _share,
                onPressedFavorite: _addToFavorites,
                onPressedCloseDailyTheme: _closeDailyTheme,
              ),
              Container(),
              Container()
            ],
          )),
    );
  }

  void _search() {}

  void _addLocation() {}

  void _openMenu() {}

  void _addLike() {}

  void _comment() {}

  void _share() {}

  void _addToFavorites() {}

  void _closeDailyTheme() {}
}
