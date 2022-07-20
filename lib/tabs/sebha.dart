import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../myitem.dart';


class sebhascreen extends StatefulWidget {
  @override
  State<sebhascreen> createState() => _sebhascreenState();
}

class _sebhascreenState extends State<sebhascreen> {
  int counter=0;
  int count=0;
  List<String> tasbih=["سبحان الله","الحمدلله","الله اكبر"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(onTap: (){
          counter++;

          setState(() {

          });
        },
            child: Center(child: Image.asset('assets/images/sebha2.png'))),
        SizedBox(height: 20,),
        Text('عدد التسبيحات',style: Theme.of(context).textTheme.headline2,),
        SizedBox(height: 10,),
        myitem(counter) ,
        SizedBox(height: 20,),
        Container(

            padding: EdgeInsets.all(10),
            decoration:BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10)
            ) ,
            child: mytasbih(counter))
      ],
    );
  }
  Widget mytasbih(int counter1){
    if(counter<33&&tasbih[0]=="سبحان الله") {


      return Text('${tasbih[0]}',style: Theme.of(context).textTheme.headline2,);}
    else if(counter>=33&&counter<66&&tasbih[0]=="سبحان الله"){

      return Text('${tasbih[1]}',style: Theme.of(context).textTheme.headline2,);
    }

    if(counter>=66){

      return Text('${tasbih[2]}',style: Theme.of(context).textTheme.headline2,);
    }
    else{
      return Text('');
    }

  }
}