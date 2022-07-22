import 'package:flutter/material.dart';
import 'package:islami_c6_online/my_theme.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
    int index=0;

    int NOT=0;
  //Number Of Tasbeeh
  List<String> Azkar=[
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 2,),
       ElevatedButton(
         style: ButtonStyle(
           backgroundColor: MaterialStateProperty.all(Colors.transparent),
           elevation: MaterialStateProperty.all(0)
         ),
           onPressed: (){
             NOT++;
             if(NOT==33){
               NOT=0;
               index++;
             }
             if(index==3){
               index=0;
             }
             setState((){});
           },
           child: Center(child: Image.asset('assets/images/sebhaaButton.png'))),
        SizedBox(height: 30,),
        Text('عدد التسبيحات',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        Container(
          padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Color(0xffC8B396),
              border: Border.all(),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text('$NOT',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
            SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
            decoration: BoxDecoration(
              border: Border.all(),
              color: MyThemeData.primaryColor,
              borderRadius: BorderRadius.circular(27)
            ),
            child: Text('${Azkar[index]}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
        Spacer(flex: 5,),
      ],
    );
  }
}
