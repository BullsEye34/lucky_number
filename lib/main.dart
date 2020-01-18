import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Lucky Number Generator"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: app(),
    ),
  ));
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Your Lucky Number is:" , style: TextStyle(fontSize: 20, color: Colors.white),),
            SizedBox(height: 50,),
            Text(number(), style: TextStyle(fontSize: 50, color: Colors.white),),

          ],
        ),
      ),
    );
  }
  number(){
    Random rand = Random();
    var i ;
    i = rand.nextInt(100);
    return i.toString();
  }
}
