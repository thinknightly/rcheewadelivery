import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.red.shade100,
        ),
        child: NavigationBar(destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'หน้าหลัก',
          ),
          NavigationDestination(
              icon: Icon(Icons.history_outlined), label: 'รายการสั่งซื้อ'),
          NavigationDestination(
              icon: Icon(Icons.chat_bubble_outline_outlined),
              label: 'คุยกับร้าน'),
          NavigationDestination(
              icon: Icon(Icons.account_circle_outlined), label: 'บัญชี')
        ]));
  }
}
