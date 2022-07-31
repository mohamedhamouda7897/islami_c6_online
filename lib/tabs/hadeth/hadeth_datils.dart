import 'package:flutter/material.dart';
import 'package:islami_c6_online/tabs/hadeth/ahadeth.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'ahdeth';

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProviderApp>(context);
    AhadethModel model =
        ModalRoute.of(context)!.settings.arguments as AhadethModel;
    return Stack(
      children: [
        Image.asset(
          pro.getBackground(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              '${model.title}',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: Center(
            child: Container(
              height: 550,
              width: 300, 
              decoration: BoxDecoration(
                color: pro.themeMode==ThemeMode.light? Colors.white:Colors.white10,
                borderRadius: BorderRadius.circular(25)
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    '${model.content}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
