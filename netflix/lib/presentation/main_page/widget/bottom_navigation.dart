import 'package:flutter/material.dart';

ValueNotifier<int> indexnot = ValueNotifier(0);

class BottomNavigationWidgetbar extends StatelessWidget {
  const BottomNavigationWidgetbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexnot,
      builder: (BuildContext context, int value, Widget? child) {
        return BottomNavigationBar(
          currentIndex: value,
          onTap: (index) {
            indexnot.value = index;
          },
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections_outlined), label: 'New & Hot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions_outlined), label: 'Fast laugh'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_downward_outlined), label: 'Downloads'),
          ],
        );
      },
    );
  }
}
