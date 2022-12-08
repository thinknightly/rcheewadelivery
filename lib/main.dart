import 'package:flutter/material.dart';
import 'Pages/RootPage.dart';

void main(List<String> args) {
  runApp(const RcheewaFood());
}

class RcheewaFood extends StatefulWidget {
  const RcheewaFood({super.key});

  @override
  State<RcheewaFood> createState() => _RcheewaFoodState();
}

class _RcheewaFoodState extends State<RcheewaFood> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove Debug Banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'IBM Plex Sans Thai',
        primarySwatch: Colors.red,
      ),
      home: const RootPage(),
    );
  }
}
