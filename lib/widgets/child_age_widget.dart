import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/models/child.dart';
import 'package:time_machine/time_machine.dart';

class ChildAgeWidget extends StatelessWidget {
  const ChildAgeWidget({Key key, this.child}) : super(key: key);

  final Child child;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 2.0),
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
        decoration: BoxDecoration(
          color: child.gender == Gender.male
              ? Theme.of(context).accentColor
              : Theme.of(context).hintColor,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Text(
          childAge,
          style: Theme.of(context)
              .primaryTextTheme
              .headline4
              .copyWith(color: Theme.of(context).primaryColor),
        ));
  }

  String get childAge {
    final LocalDate today = LocalDate.today();
    final Period period = today.periodSince(LocalDate.dateTime(child.birthday));
    return period.years == 0
        ? '${period.months}м'
        : '${period.years}г ${period.months}м';
  }
}
