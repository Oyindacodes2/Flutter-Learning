import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import './stateManagement.dart';
import './scopedModelProduct.dart';



class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.item}) : super(key: key);

  final Product item;

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
             Image.asset(
                'assets/' + this.item.image,
                width: 100,
              ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: ScopedModel<Product>( 
                  model: this.item,
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[ 
                      Text(this.item.name, style: TextStyle( fontWeight: FontWeight.bold ),),
                      Text(this.item.description, style: TextStyle( fontStyle: FontStyle.italic ),),
                      Text("Price: "+ this.item.price.toString()),
                      ScopedModelDescendant<Product>( 
                        builder: (context, child, item){
                          return RatingBox(item:item);
                        }
                       )
                     ],
                   ),
                 )
              ),
            )
          ],
        ),
      ),
    );
  }
}
