import 'package:flutter/material.dart';

import '../../home.dart';

class HomeCategoryScreen extends StatefulWidget {
  const HomeCategoryScreen({super.key});

  @override
  State<HomeCategoryScreen> createState() => _HomeCategoryScreenState();
}

class _HomeCategoryScreenState extends State<HomeCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Cafedisyon')),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 20,
                  right: 20,
                ),
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    childAspectRatio: 1 / 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (ctx, idx) => CategoryItem(
                    index: idx,
                  ),
                  itemCount: categoryList.length,
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
