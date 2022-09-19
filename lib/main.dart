import 'package:flutter/material.dart';
import 'view/view.dart';
void main(){
  runApp(const Cafedisyon());
}

class Cafedisyon extends StatelessWidget {
  const Cafedisyon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeCategoryScreen(),
    );
  }
}
