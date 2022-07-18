import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {

  List <String> tesbih = ['سبحان الله ', 'الحمد لله' ,'الله أكبر'];
  int numSebha = 0 ;
  String nameSebha = 'سبحان الله ' ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Center(
                child: Container(
                    margin: EdgeInsets.only(left: 50,),
                    child: Image.asset('assets/images/headSebha.png',))),
            Container(
                margin: EdgeInsets.only(top: 85,),
                child: Center(child: InkWell(
                  onTap: (){
                    addTesbihe();
                  },
                    child: Image.asset('assets/images/bodySebha.png')))),

          ],
        ),
        SizedBox(height: 20,),
        Text('عدد التسبيحات',
          style: Theme.of(context).textTheme.headline2,),
        SizedBox(height: 20,),
        Container(
          height: 80,
          width: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25)
          ),
          child: Text('$numSebha',
              style: Theme.of(context).textTheme.headline2),
        ),
        SizedBox(height: 20,),
        Container(
          height: 50,
          width: 130,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25)
          ),
          child: Text('$nameSebha',
              style: Theme.of(context).textTheme.headline3),
        ),
      ],
    );
  }
  void addTesbihe(){
    setState(() {
      numSebha++ ;
      if (numSebha == 34) {
        nameSebha = tesbih[1];
      }else if (numSebha == 67) {
        nameSebha = tesbih[2];
      }else if (numSebha == 100) {
       numSebha = 0 ;
       nameSebha = tesbih[0];
      }
    });
  }
}
