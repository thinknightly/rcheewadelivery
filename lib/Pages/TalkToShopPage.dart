import 'package:flutter/material.dart';

class TalkToShop extends StatelessWidget {
  const TalkToShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "คุยกับทางร้าน",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}
