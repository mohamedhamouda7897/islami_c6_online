import 'package:flutter/material.dart';
import 'package:islami_c6_online/sura_details/sura_details_screen.dart';

class QuranSuraItem extends StatelessWidget {
  String name;
  int index;

  QuranSuraItem(this.name, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsModel(name, index));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '$name',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
