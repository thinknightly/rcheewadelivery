import 'package:flutter/material.dart';
import '../Components/RecommendFood.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'สวัสดียามเช้า! fullname.',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IBM Plex Sans Thai',
                    color: Color.fromARGB(255, 80, 8, 8)),
              ),
            ),
          )),
      body: RecommendFoodCard(),
    );
  }
}
