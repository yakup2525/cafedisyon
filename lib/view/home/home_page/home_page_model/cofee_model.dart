import 'package:flutter/material.dart';

class Coffee {
  String name;
  String image;
  Color backgroundColor;
  double price;
  Coffee({
    required this.name,
    required this.image,
    required this.backgroundColor,
    required this.price,
  });
}



List<Coffee> _coffee_list = [
  Coffee(
    name: "Espresso",
    image: "assets/images/espresso.png",
    backgroundColor: const Color(0xff65C5B2),
    price: 5,
  ),
  Coffee(
    name: "Cafe Mocha",
    image: "assets/images/Caffe_Mocha.png",
    backgroundColor: const Color(0xffFFAEF2),
    price: 11,
  ),
  Coffee(
    name: "Caramel Macchiato",
    image: "assets/images/Caramel_Macchiato.png",
    backgroundColor: const Color(0xffFF9839),
    price: 7,
  ),
  Coffee(
    name: "Turkish Coffee",
    image: "assets/images/turkish_Coffee.png",
    backgroundColor: const Color(0xffB68456),
    price: 4,
  ),
  Coffee(
    name: "Cappuccino",
    image: "assets/images/cappuccino.png",
    backgroundColor: const Color(0xffE74343),
    price: 9,
  ),
  Coffee(
    name: "Affogato",
    image: "assets/images/affogato.png",
    backgroundColor: const Color(0xff56B670),
    price: 12,
  ),
  Coffee(
    name: "Cortado",
    image: "assets/images/cortado.png",
    backgroundColor: const Color(0xff8D5FDC),
    price: 8,
  ),
  Coffee(
    name: "Cafe Cubano",
    image: "assets/images/cafe_cubano.png",
    backgroundColor: const Color(0xff5FBFDC),
    price: 15,
  ),
  Coffee(
    name: "Espresso",
    image: "assets/images/espresso.png",
    backgroundColor: const Color(0xff65C5B2),
    price: 5,
  ),
  Coffee(
    name: "Cafe Mocha",
    image: "assets/images/Caffe_Mocha.png",
    backgroundColor: const Color(0xffFFAEF2),
    price: 11,
  ),
  Coffee(
    name: "Caramel Macchiato",
    image: "assets/images/Caramel_Macchiato.png",
    backgroundColor: const Color(0xffFF9839),
    price: 7,
  ),
  Coffee(
    name: "Turkish Coffee",
    image: "assets/images/turkish_Coffee.png",
    backgroundColor: const Color(0xffB68456),
    price: 4,
  ),
  Coffee(
    name: "Cappuccino",
    image: "assets/images/cappuccino.png",
    backgroundColor: const Color(0xffE74343),
    price: 9,
  ),
  Coffee(
    name: "Affogato",
    image: "assets/images/affogato.png",
    backgroundColor: const Color(0xff56B670),
    price: 12,
  ),
  Coffee(
    name: "Cortado",
    image: "assets/images/cortado.png",
    backgroundColor: const Color(0xff8D5FDC),
    price: 8,
  ),
  Coffee(
    name: "Cafe Cubano",
    image: "assets/images/cafe_cubano.png",
    backgroundColor: const Color(0xff5FBFDC),
    price: 15,
  ),
  Coffee(
    name: "Espresso",
    image: "assets/images/espresso.png",
    backgroundColor: const Color(0xff65C5B2),
    price: 5,
  ),
  Coffee(
    name: "Cafe Mocha",
    image: "assets/images/Caffe_Mocha.png",
    backgroundColor: const Color(0xffFFAEF2),
    price: 11,
  ),
  Coffee(
    name: "Caramel Macchiato",
    image: "assets/images/Caramel_Macchiato.png",
    backgroundColor: const Color(0xffFF9839),
    price: 7,
  ),
  Coffee(
    name: "Turkish Coffee",
    image: "assets/images/turkish_Coffee.png",
    backgroundColor: const Color(0xffB68456),
    price: 4,
  ),
  Coffee(
    name: "Cappuccino",
    image: "assets/images/cappuccino.png",
    backgroundColor: const Color(0xffE74343),
    price: 9,
  ),
  Coffee(
    name: "Affogato",
    image: "assets/images/affogato.png",
    backgroundColor: const Color(0xff56B670),
    price: 12,
  ),
  Coffee(
    name: "Cortado",
    image: "assets/images/cortado.png",
    backgroundColor: const Color(0xff8D5FDC),
    price: 8,
  ),
  Coffee(
    name: "Cafe Cubano",
    image: "assets/images/cafe_cubano.png",
    backgroundColor: const Color(0xff5FBFDC),
    price: 15,
  ),
  

 
];

List<Coffee> get coffee_list {
  return [..._coffee_list];
}



