import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Product extends Model {
  final String name;
  final String description;
  final int price;
  final String image;
  int rating;

  Product(this.name, this.description, this.price, this.image, this.rating);

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      json['name'],
      json['description'],
      json['price'],
      json['image'],
      json['rating'],
    );
  }

  void updateRating(int myRating) {
    rating = myRating;

    notifyListeners();
  }

  static List<Product> getProducts() {
    List<Product> items = <Product>[];

    items.add(
        Product("Bat Logo", "Mystery, Action, Fighting", 25, "batlogo.jpg", 0));

    items.add(Product("GTA V", "Adventure, Open World", 34, "GTA.jpg", 0));

    items.add(
        Product("Call of Duty", "FPS, PvP, Shooter, action", 30, "COD.jpg", 0));

    items.add(Product(
        "Naruto Ninja Storm 4", "Fighting, PvP, Action", 24, "itachi.png", 0));

    items.add(Product(
        "Deap Space 2", "Horror, FPS, Shooter", 20, "deadSpace.jpg", 0));

    return items;
  }
}

