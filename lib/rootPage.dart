import 'package:flutter/material.dart';
import 'BottomNavBar.dart';
import 'AccountPage.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RCheewa Delivery",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Cart is working well');
        },
        child: const Icon(Icons.shopping_cart_outlined),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
