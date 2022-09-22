import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// ValueNotifier<int> indexchangenotifier = ValueNotifier(0);
ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class Bottomnav extends StatelessWidget {
  const Bottomnav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexchangenotifier,
        builder: (context, int newindex, _) {
          return BottomNavigationBar(
              currentIndex: newindex,
              onTap: (index) {
                indexchangenotifier.value = index;
              },
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[600],
              selectedIconTheme: IconThemeData(color: Colors.white),
              unselectedIconTheme: IconThemeData(color: Colors.grey[600]),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections), label: 'New & Hot'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions), label: 'Fast Laughs'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download), label: 'Downloads'),
              ]);
        });
  }
}
