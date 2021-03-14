import 'package:flutter/material.dart';
import 'package:news_app/models/author.dart';
import 'package:news_app/models/child.dart';

class News {
  News(
      {@required this.id,
      @required this.author,
      @required this.theme,
      @required this.title,
      @required this.text,
      @required this.date,
      this.imageUrl,
      this.countLikes,
      this.countComments});

  final String id;
  final Author author;
  final String theme;
  final String title;
  final String text;

  final DateTime date;
  final String imageUrl;
  final int countLikes;
  final int countComments;

  static String get dailyTheme =>
      'А как вы с любимым ласково называете друг друга?';

  static List<News> get listOfNews {
    Author author = Author(
        id: '1',
        name: 'Anna Ivanova',
        photoUrl:
            'https://art-holst.com.ua/wp-content/uploads/thumb_l_27943-768x768.jpg',
        children: [
          Child(id: '1', gender: Gender.female, birthday: DateTime(2019, 8, 2)),
          Child(id: '2', gender: Gender.male, birthday: DateTime(2020, 12, 28))
        ]);
    return [
      News(
          id: '1',
          author: author,
          theme: 'От рождения до года',
          title: 'Погодки',
          text:
              'Возрастные границы детства разнятся в различных культурах, теориях жизненного цикла и юридических системах. В общем случае ребёнком называют человека от рождения до окончания пубертатного периода. Де́вочка — ребёнок женского пола; ма́льчик — ребёнок мужского пола. Раздел медицины, посвящённый детскому здоровью, называется педиатрия.',
          date: DateTime(2021, 3, 13),
          countLikes: 12,
          countComments: 7),
      News(
          id: '2',
          author: author,
          theme: 'От рождения до года',
          title: 'Погодки',
          imageUrl:
              'https://cdn.fishki.net/upload/post/2019/01/21/2845587/tn/6382b01a0963e4359c66ba7186837f39.jpg',
          text:
              'Возрастные границы детства разнятся в различных культурах, теориях жизненного цикла и юридических системах. В общем случае ребёнком называют человека от рождения до окончания пубертатного периода. Де́вочка — ребёнок женского пола; ма́льчик — ребёнок мужского пола. Раздел медицины, посвящённый детскому здоровью, называется педиатрия.',
          date: DateTime(2021, 3, 13),
          countLikes: 12,
          countComments: 7),
      News(
          id: '3',
          author: author,
          theme: 'От рождения до года',
          title: 'Погодки',
          text:
              'Возрастные границы детства разнятся в различных культурах, теориях жизненного цикла и юридических системах. В общем случае ребёнком называют человека от рождения до окончания пубертатного периода. Де́вочка — ребёнок женского пола; ма́льчик — ребёнок мужского пола. Раздел медицины, посвящённый детскому здоровью, называется педиатрия.',
          date: DateTime(2021, 3, 13),
          countLikes: 12,
          countComments: 7),
      News(
          id: '4',
          author: author,
          theme: 'От рождения до года',
          title: 'Погодки',
          text:
              'Возрастные границы детства разнятся в различных культурах, теориях жизненного цикла и юридических системах. В общем случае ребёнком называют человека от рождения до окончания пубертатного периода. Де́вочка — ребёнок женского пола; ма́льчик — ребёнок мужского пола. Раздел медицины, посвящённый детскому здоровью, называется педиатрия.',
          date: DateTime(2021, 3, 13),
          countLikes: 12,
          countComments: 7),
      News(
          id: '5',
          author: author,
          theme: 'От рождения до года',
          title: 'Погодки',
          text:
              'Возрастные границы детства разнятся в различных культурах, теориях жизненного цикла и юридических системах. В общем случае ребёнком называют человека от рождения до окончания пубертатного периода. Де́вочка — ребёнок женского пола; ма́льчик — ребёнок мужского пола. Раздел медицины, посвящённый детскому здоровью, называется педиатрия.',
          date: DateTime(2021, 3, 13),
          countLikes: 12,
          countComments: 7),
    ];
  }
}
