import 'package:flutter/material.dart';

enum Gender { male, female }

class Child {
  Child({@required this.id, @required this.gender, @required this.birthday});

  final String id;
  final Gender gender;
  final DateTime birthday;
}
