import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container( 
      decoration: const BoxDecoration( 
        border: Border( 
          top: BorderSide( width: 1.0, color: Color(0xFFFFFFFFFF)),
          left: BorderSide( width: 1.0, color: Color(0xFFFFFFFFFF)),
          right: BorderSide( width: 1.0, color: Color(0xFFFF000000)),
          bottom: BorderSide( width: 1.0, color: Color(0xFFFF000000)),
         ),
       ),
       child: Container( 
         padding: const EdgeInsets.symmetric( horizontal: 20.0, vertical: 2.0),
         decoration: const BoxDecoration( 
           border: Border( 
             top: BorderSide( width: 1.0, color: Color(0xFFFFDFDFDF)),
             left: BorderSide( width: 1.0, color: Color(0xFFFFDFDFDF)),
             right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
             bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
            ),
            color: Colors.grey
          ),
          child: const Text('OK', textAlign: TextAlign.center, style: TextStyle(color: Colors.black)),
        ),
     );
  }
}
