import 'package:flutter/material.dart';
import 'package:cafedisyon/view/view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Cafedisyon'),),
     body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          width: double.infinity,
          child: Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 2.5 / 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (ctx, idx) => CoffeeItem(
                  index: idx,
                ),
                itemCount: coffee_list.length,
              ),
            ),
          ),
        ),
      ),
    );
  }
}






