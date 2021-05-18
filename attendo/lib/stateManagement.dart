import 'package:flutter/material.dart';
import './scopedModelProduct.dart';

class RatingBox extends StatelessWidget {
  RatingBox({Key key, this.item}) : super(key: key);

  final Product item;

  Widget build(BuildContext context) {
    double _size = 20.0;
    print(item.rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (item.rating >= 1
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: () => this.item.updateRating(1),
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (item.rating >= 2
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: () =>
                this.item.updateRating(2),
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (item.rating >= 3
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: () => this.item.updateRating(3),
          ),
        )
      ],
    );
  }
}
