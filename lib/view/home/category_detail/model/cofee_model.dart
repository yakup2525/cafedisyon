import 'package:flutter/material.dart';

class CoffeeModel {
  String name;
  String image;
  Color backgroundColor;
  double price;
  CoffeeModel({
    required this.name,
    required this.image,
    required this.backgroundColor,
    required this.price,
  });
}



List<CoffeeModel> _coffee_list = [
  CoffeeModel(
    name: "Espresso",
    image: "assets/images/espresso.png",
    backgroundColor: const Color(0xff65C5B2),
    price: 5,
  ),
  CoffeeModel(
    name: "Cafe Mocha",
    image: "assets/images/Caffe_Mocha.png",
    backgroundColor: const Color(0xffFFAEF2),
    price: 11,
  ),
  CoffeeModel(
    name: "Caramel Macchiato",
    image: "assets/images/Caramel_Macchiato.png",
    backgroundColor: const Color(0xffFF9839),
    price: 7,
  ),
  CoffeeModel(
    name: "Turkish Coffee",
    image: "assets/images/turkish_Coffee.png",
    backgroundColor: const Color(0xffB68456),
    price: 4,
  ),
  CoffeeModel(
    name: "Cappuccino",
    image: "assets/images/cappuccino.png",
    backgroundColor: const Color(0xffE74343),
    price: 9,
  ),
  CoffeeModel(
    name: "Affogato",
    image: "assets/images/affogato.png",
    backgroundColor: const Color(0xff56B670),
    price: 12,
  ),
  CoffeeModel(
    name: "Cortado",
    image: "assets/images/cortado.png",
    backgroundColor: const Color(0xff8D5FDC),
    price: 8,
  ),
  CoffeeModel(
    name: "Cafe Cubano",
    image: "assets/images/cafe_cubano.png",
    backgroundColor: const Color(0xff5FBFDC),
    price: 15,
  ),
  CoffeeModel(
    name: "Espresso",
    image: "assets/images/espresso.png",
    backgroundColor: const Color(0xff65C5B2),
    price: 5,
  ),
  CoffeeModel(
    name: "Cafe Mocha",
    image: "assets/images/Caffe_Mocha.png",
    backgroundColor: const Color(0xffFFAEF2),
    price: 11,
  ),
  CoffeeModel(
    name: "Caramel Macchiato",
    image: "assets/images/Caramel_Macchiato.png",
    backgroundColor: const Color(0xffFF9839),
    price: 7,
  ),
  CoffeeModel(
    name: "Turkish Coffee",
    image: "assets/images/turkish_Coffee.png",
    backgroundColor: const Color(0xffB68456),
    price: 4,
  ),
  CoffeeModel(
    name: "Cappuccino",
    image: "assets/images/cappuccino.png",
    backgroundColor: const Color(0xffE74343),
    price: 9,
  ),
  CoffeeModel(
    name: "Affogato",
    image: "assets/images/affogato.png",
    backgroundColor: const Color(0xff56B670),
    price: 12,
  ),
  CoffeeModel(
    name: "Cortado",
    image: "assets/images/cortado.png",
    backgroundColor: const Color(0xff8D5FDC),
    price: 8,
  ),
  CoffeeModel(
    name: "Cafe Cubano",
    image: "assets/images/cafe_cubano.png",
    backgroundColor: const Color(0xff5FBFDC),
    price: 15,
  ),

 
];

List<CoffeeModel> get coffee_list {
  return [..._coffee_list];
}



