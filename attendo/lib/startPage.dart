import 'package:flutter/material.dart';
import './customButton.dart';

class StartPage extends StatefulWidget {
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
 

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[800],
        appBar: AppBar(
          title: Text('Attendo App'),
          shadowColor: Colors.green[900],
        ),
        body: 
         Column(
          children: <Widget>[
            Center(
              child: Text(
                'Take attendance',
                style: TextStyle(color: Colors.white, fontSize: 23),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Text(
                'Get accurate Information about people present at your events or workplace.',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: CustomButton(),
            ),
            Center( 
              child: Container( 
                height: 100.0,
                width: 100.0,
                color: Colors.yellow,
                child: Align( 
                  alignment: FractionalOffset(0.5,0.5),
                  child: Container( 
                    height: 40.0,
                    width: 40.0,
                    color: Colors.red[700],
                   ),
                 ),
               ),
             )
            /* Stack( 
            children: <Widget>[
              Image.asset('assets/batlogo.jpg'),
              Icon( Icons.email , color: Colors.white, )
            ],
           )*/
          ],
        )

        );
  }
}
