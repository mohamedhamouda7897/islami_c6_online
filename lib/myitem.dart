import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myitem extends StatefulWidget {
  int count;
  myitem(this.count);

  @override
  State<myitem> createState() => _myitemState();
}

class _myitemState extends State<myitem> {


  @override
  Widget build(BuildContext context) {
    return   Container(

      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(
              10)

      ),

      child: Text('${widget.count
      }',style: Theme.of(context).textTheme.headline2,),
    );


  }


}