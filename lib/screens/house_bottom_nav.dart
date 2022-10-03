import 'package:flutter/material.dart';

class HouseBottomNav extends StatefulWidget {
  const HouseBottomNav({Key? key}) : super(key: key);

  @override
  State<HouseBottomNav> createState() => _HouseBottomNavState();
}

class _HouseBottomNavState extends State<HouseBottomNav> {
  int _currentIndex = 0;
  Widget getWidgets(index) {
    switch (index) {
      case 0:
        return const Center(
          child: Text("Home"),
        );
      case 1:
        return const Center(
          child: Text("Dashboard"),
        );
      case 2:
        return const Center(
          child: Text("Cart"),
        );
      case 3:
        return const Center(
          child: Text("Profile"),
        );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.yellow.shade800,
        unselectedItemColor: Colors.yellow.shade800.withOpacity(0.6),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      body: getWidgets(_currentIndex),
    );
  }
}
