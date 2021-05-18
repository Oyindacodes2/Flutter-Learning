import 'package:flutter/material.dart';

class GestureDemo extends StatelessWidget {
  GestureDemo({Key key, this.title}) : super(key: key);

  final String title;

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Message"),
            content: new Text("Hello World"),
            actions: <Widget>[ 
              new FlatButton( 
                child: new Text("Close"),
                onPressed: ()=> Navigator.of(context).pop(),
               )
             ],
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _showDialog(context);
          },
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
