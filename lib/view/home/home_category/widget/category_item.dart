import 'package:flutter/material.dart';

import '../../../view.dart';

class CategoryItem extends StatefulWidget {
  final int index;

  const CategoryItem({super.key, required this.index});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CategoryDetailScreen(
            categoryDetailtype: 'Category Detail',
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    coffee_list[widget.index].name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                 Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Colors.black12,
                        categoryList[widget.index].backgroundColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child:const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  
                               ), 
              ],
            ),
            Expanded(
              child: Image.asset(
                coffee_list[widget.index].image,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
