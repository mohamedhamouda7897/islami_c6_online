import 'package:flutter/material.dart';
import 'package:islami_c6_online/my_theme.dart';

class AhadethScreen extends StatelessWidget {
  const AhadethScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/ahadeth_header_bg.png'),
        Divider(color: Theme
            .of(context)
            .primaryColor, thickness: 3,),
        Text('Ahadeth', style: Theme
            .of(context)
            .textTheme
            .subtitle1,),
        Divider(color: Theme
            .of(context)
            .primaryColor, thickness: 3,),
        ListView.separated(itemBuilder:,
            separatorBuilder: (_, index) {
              return Container(
                height: 1,
                margin: EdgeInsets.symmetric(horizontal: 50),
                color: MyThemeData.primaryColor,
              );
            },
            itemCount:)
      ],
    );
  }

}
