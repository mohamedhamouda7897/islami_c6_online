import 'package:flutter/material.dart';
import 'package:islami_c6_online/providers/my_provider.dart';
import 'package:islami_c6_online/tabs/hadeth/ahadeth.dart';
import 'package:islami_c6_online/tabs/quran/quran.dart';
import 'package:islami_c6_online/tabs/radio.dart';
import 'package:islami_c6_online/tabs/sebha.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c6_online/tabs/setting/settings.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProviderApp>(context);
    return Stack(
      children: [
        Image.asset(
         provider.getBackground(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              '${AppLocalizations.of(context)!.islamiTitle}',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran.png')),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                    label: AppLocalizations.of(context)!.tsbeh),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                    label: AppLocalizations.of(context)!.ahadeth),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings),
              ],
            ),
          ),
          body: tabs[currentIndex],
        )
      ],
    );
  }

  List<Widget> tabs = [
    QuranScreen(),
    sebhascreen(),
    RadioScreen(),
    AhadethScreen(),
    SettingsScreen()
  ];
}
