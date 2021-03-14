import 'package:flutter/widgets.dart';
import 'package:news_app/models/child.dart';

class Author {
  Author(
      {@required this.id, @required this.name, this.photoUrl, this.children});

  final String id;
  final String name;
  final String photoUrl;
  final List<Child> children;
}
