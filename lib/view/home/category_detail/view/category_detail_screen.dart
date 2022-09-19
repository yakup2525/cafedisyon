import 'package:flutter/material.dart';
import 'package:cafedisyon/view/view.dart';

class CategoryDetailScreen extends StatefulWidget {
  const CategoryDetailScreen({Key? key, required this.categoryDetailtype}) : super(key: key);
final String categoryDetailtype;
  @override
  State<CategoryDetailScreen> createState() => _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Center(child:  Text('Cafedisyon')),),
     body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  //top: 20,
                  left: 20,
                  right: 20,
                ),
                width: double.infinity,
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
              Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.blueAccent,
                boxShadow: [
                  BoxShadow(color: Colors.green, spreadRadius: 3),
                ],
              ),
              height: 300,
              width: double.infinity,
              
            )
          ],
        ),
      ),
    );
  }
}






