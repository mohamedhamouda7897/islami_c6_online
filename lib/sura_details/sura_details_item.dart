import 'package:flutter/material.dart';
import 'package:islami_c6_online/providers/my_provider.dart';
import 'package:provider/provider.dart';

class SuraDetilsItem extends StatelessWidget {
  String suraName;

  SuraDetilsItem(this.suraName);

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProviderApp>(context);
    return Column(
      children: [
        SizedBox(height: 35,),
        Container(
          height: 550,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: pro.themeMode==ThemeMode.dark?Colors.white10:Colors.white
          ),
          child: SingleChildScrollView(
            child: Text(
              suraName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ),
      ],
    );
  }
}
