import 'package:flutter/material.dart';
import '../Components/RecommendFood.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            titleTextStyle: const TextStyle(
                fontSize: 30,
                fontFamily: 'IBM Plex Sans Thai',
                color: Color.fromARGB(255, 80, 8, 8)),
            title: const Text('สวัสดี! ผู้ใช้งาน'),
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      body: const RecommendFoodSlideBar(),
    );
  }
}
