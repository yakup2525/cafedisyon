import 'package:flutter/material.dart';

import '../../../view.dart';

class CoffeeItem extends StatelessWidget {
  final int index;

  const CoffeeItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CoffeeDetails(
            index: index,
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: coffee_list[index].backgroundColor,
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
                    coffee_list[index].name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                 GestureDetector(
                 
                   child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Colors.black12,
                          coffee_list[index].backgroundColor,
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
                 ), 
              ],
            ),
            Expanded(
              child: Hero(
                tag: index,
                child: Image.asset(
                  coffee_list[index].image,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
