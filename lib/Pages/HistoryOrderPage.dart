import 'package:flutter/material.dart';

class HistoryOrder extends StatelessWidget {
  const HistoryOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ประวัติการสั่งซื้อ",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}
