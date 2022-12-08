import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
            fontSize: 40,
            fontFamily: 'IBM Plex Sans Thai',
            color: Color.fromARGB(99, 200, 200, 200)),
        title: const Text('สวัสดี! ผู้ใช้งาน'),
      ),
    );
  }
}
