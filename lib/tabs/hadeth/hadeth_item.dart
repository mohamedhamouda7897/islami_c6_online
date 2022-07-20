import 'package:flutter/material.dart';
import 'package:islami_c6_online/tabs/hadeth/ahadeth.dart';

class HadethItem extends StatelessWidget {
  AhadethModel ahadethModel;

  HadethItem(this.ahadethModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, SuraDetailsScreen.routeName,
        //     arguments: SuraDetailsModel(name, index));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '${ahadethModel.title}',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
