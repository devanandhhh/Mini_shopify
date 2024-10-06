
import 'package:flutter/material.dart';
import 'package:mini_shop/main.dart';

import '../homePage/home_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationPage> {
  int currentIndex = 0;
  final pages = [
    const HomePage(),
    const CartPage(),
    const MyOrderPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar:
          // NavigationBar(
          //   destinations:const [
          //     NavigationDestination(icon:  Icon(Icons.home), label: 'home'),
          //     NavigationDestination(icon:  Icon(Icons.shop), label: 'home'),
          //     NavigationDestination(icon:  Icon(Icons.home), label: 'home'),
          //     NavigationDestination(icon:  Icon(Icons.home), label: 'home')
          //   ],
          // )
          BottomNavigationBar(
        currentIndex: currentIndex,
        selectedIconTheme: const IconThemeData(size: 30),
        unselectedIconTheme: const IconThemeData(size: 25),
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        //showUnselectedLabels:false ,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Cart'), 
          BottomNavigationBarItem(icon: Icon(Icons.book_online), label: 'My Order'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
        ],
      ),
    );
  }
}