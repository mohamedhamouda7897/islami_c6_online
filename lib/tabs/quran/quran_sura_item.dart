import 'package:flutter/material.dart';

class QuranSuraItem extends StatelessWidget {
  String name;

  QuranSuraItem(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        '$name',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
