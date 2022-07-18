import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                  child: Image.asset('assets/images/headSebha.png',)),
              ClipRect(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                      child: Image.asset('assets/images/bodySebha.png'))),
            ],
          ),
        ),
      ],
    );
  }
}
