import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c6_online/my_theme.dart';
import 'package:islami_c6_online/tabs/hadeth/hadeth_item.dart';

class AhadethScreen extends StatefulWidget {
  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
  List<AhadethModel> Allahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Allahadeth.isEmpty) {
      LoadHadethFile();
    }

    return Column(
      children: [
        Image.asset('assets/images/ahadeth_header_bg.png'),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          'Ahadeth',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Allahadeth.length == 0
            ? Center(child: CircularProgressIndicator())
            : Expanded(
                child: ListView.separated(
                    itemBuilder: (_, index) {
                      return HadethItem(Allahadeth[index]);
                    },
                    separatorBuilder: (_, index) {
                      return Container(
                        height: 1,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        color: MyThemeData.primaryColor,
                      );
              },
              itemCount: Allahadeth.length),
        )
      ],
    );
  }

  void LoadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadeth = content.trim().split('#\r\n');

    for (int i = 0; i < hadeth.length; i++) {
      String AllHadethtext = hadeth[i];
      AllHadethtext.trim();
      print(AllHadethtext);
      print('-------------');
      List<String> lines = AllHadethtext.split('\n');
      String title = lines[0];
      lines.removeAt(0);
      AhadethModel ahadethModel = AhadethModel(title, lines);
      Allahadeth.add(ahadethModel);
    }
    setState(() {});
  }
}

class AhadethModel {
  String title;
  List<String> content;

  AhadethModel(this.title, this.content);
}
