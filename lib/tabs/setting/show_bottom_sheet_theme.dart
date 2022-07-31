import 'package:flutter/material.dart';
import 'package:islami_c6_online/my_theme.dart';
import 'package:islami_c6_online/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ShowThemeBottomSheet extends StatefulWidget {
  const ShowThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ShowThemeBottomSheet> createState() => _ShowThemeBottomSheetState();
}

class _ShowThemeBottomSheetState extends State<ShowThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProviderApp>(context);
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(

        children: [
          InkWell(
              onTap: (){
           pro.changeTheme(ThemeMode.light);
           Navigator.pop(context);
              },
              child: showThemeSelected('Light',pro.themeMode==ThemeMode.light?true:false)),
          SizedBox(height: 15,),
          InkWell(
              onTap: (){
                pro.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: showThemeSelected('Dark',pro.themeMode==ThemeMode.light?false:true)),
        ],
      ),
    );
  }

  Widget showThemeSelected(String text,bool selected){
    if(selected){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$text',style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: MyThemeData.selected
          ),),
          Icon(Icons.check,color: MyThemeData.selected,),
        ],
      );
    }else{

     return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$text',style: Theme.of(context).textTheme.bodyText1?.copyWith(
            color: MyThemeData.unselected
          )),
          Icon(Icons.check,color: MyThemeData.unselected,),
        ],
      );
    }
  }

}
