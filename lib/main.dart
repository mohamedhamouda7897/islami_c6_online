import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c6_online/home_layout.dart';
import 'package:islami_c6_online/my_theme.dart';
import 'package:islami_c6_online/sura_details/sura_details_screen.dart';
import 'package:islami_c6_online/tabs/hadeth/hadeth_datils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Spanish, no country code
      ],
      routes: {
        HomeLayout.routeName: (c) => HomeLayout(),
        SuraDetailsScreen.routeName: (c) => SuraDetailsScreen(),
        HadethDetails.routeName: (c) => HadethDetails(),
      },
      locale: Locale('ar'),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
