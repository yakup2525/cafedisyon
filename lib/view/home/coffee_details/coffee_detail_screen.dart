import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page/home_page_model/cofee_model.dart';

class CoffeeDetails extends StatefulWidget {
  final int index;
  const CoffeeDetails({super.key, required this.index});

  @override
  _CoffeeDetailsState createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  var rating = 3.0;
  int quantity = 1;
  bool switchvalue = true;
  bool isFavourite = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coffee_list[widget.index].backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 60,
                    child: Image.asset(
                      "assets/images/menu.png",
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 60,
                    child: Image.asset(
                      "assets/images/shopping-cart.png",
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              70,
                            ),
                            topRight: Radius.circular(
                              70,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 50,
                    child: SizedBox(
                      height: 300,
                      width: 300,
                      child: Hero(
                        tag: widget.index,
                        child: Image.asset(
                          coffee_list[widget.index].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(30),
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () =>
                                      Navigator.of(context).pop(),
                                  iconSize: 40,
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: coffee_list[widget.index]
                                        .backgroundColor,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFavourite = !isFavourite;
                                    });
                                  },
                                  iconSize: 40,
                                  icon: Icon(
                                    isFavourite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: coffee_list[widget.index]
                                        .backgroundColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  coffee_list[widget.index].name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 45,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                            
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        rating.toString(),
                                        style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 45,
                                  child: Text(
                                    "\$${coffee_list[widget.index].price}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      iconSize: 40,
                                      icon: Icon(
                                        Icons.remove_circle,
                                        color: coffee_list[widget.index]
                                            .backgroundColor,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (quantity > 0) {
                                            quantity -= 1;
                                          }
                                        });
                                      },
                                    ),
                                    Container(
                                      height: 23,
                                      width: 30,
                                      alignment: Alignment.center,
                                      child: Text(
                                        quantity.toString(),
                                        style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      iconSize: 40,
                                      icon: Icon(
                                        Icons.add_circle,
                                        color: coffee_list[widget.index]
                                            .backgroundColor,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          quantity += 1;
                                        });
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 30,
                                  child: Text(
                                    "L",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                CupertinoSwitch(
                                  trackColor: coffee_list[widget.index]
                                      .backgroundColor,
                                  value: switchvalue,
                                  activeColor: coffee_list[widget.index]
                                      .backgroundColor,
                                  onChanged: (value) {
                                    setState(() {
                                      switchvalue = value;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const SizedBox(
                                  height: 30,
                                  child: Text(
                                    "S",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                color:
                                    coffee_list[widget.index].backgroundColor,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 7,
                                  ),
                                  child: const Text(
                                    "Order Now",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
