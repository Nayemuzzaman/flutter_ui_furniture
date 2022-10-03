import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            homeAppBar(),
            Divider(
              height: 40,
              color: Colors.yellow.shade800,
              thickness: 0.5,
            ),
          ],
        ),
      ),
    );
  }

  Widget homeAppBar() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Products",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),),
          Text(
            "Best Household collections",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey
          ),)
        ],
      ),
      const Icon(Icons.shopping_cart_outlined),
    ],
  );
}
