import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'Pages/HistoryOrderPage.dart';
import 'Pages/TalkToShopPage.dart';
import 'Pages/AccountPage.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // Set Variable for Bottom Navigator Selected
  int index = 0;
  // Set Pages List for Navigator
  final pages = const [HomePage(), HistoryOrder(), TalkToShop(), AccountPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Cart is working well');
        },
        child: const Icon(Icons.shopping_cart_outlined),
      ),
      body: pages[index],
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            indicatorColor: Colors.red.shade100,
          ),
          child: NavigationBar(
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              // Start - Set Selected Items on Navigator Bar
              selectedIndex: index,
              onDestinationSelected: (index) =>
                  setState((() => this.index = index)),
              // End - Set Selected Items on Navigator Bar
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'หน้าหลัก',
                ),
                NavigationDestination(
                    icon: Icon(Icons.history_outlined),
                    selectedIcon: Icon(Icons.history),
                    label: 'รายการสั่งซื้อ'),
                NavigationDestination(
                    icon: Icon(Icons.chat_bubble_outline_outlined),
                    selectedIcon: Icon(Icons.chat_bubble_outlined),
                    label: 'คุยกับร้าน'),
                NavigationDestination(
                    icon: Icon(Icons.account_circle_outlined),
                    selectedIcon: Icon(Icons.account_circle_rounded),
                    label: 'บัญชี')
              ])),
    );
  }
}
