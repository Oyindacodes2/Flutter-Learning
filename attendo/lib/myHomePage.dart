import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( 
        color: Colors.white,
       ),
       padding: EdgeInsets.all(25.0),
       child: Center( 
         child: Text('Hello World',style: TextStyle(color: Colors.black, letterSpacing: 0.5, fontSize: 20), textDirection: TextDirection.ltr,),
        ),
    );
  }
}
