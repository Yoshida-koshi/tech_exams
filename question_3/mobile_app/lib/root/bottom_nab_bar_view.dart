import 'package:flutter/material.dart';
import 'package:mobile_app/pages/recipe_list_page.dart';
import 'package:mobile_app/pages/recipe_register_page.dart';

class BottomNabBarView extends StatefulWidget {
  const BottomNabBarView({super.key});

  @override
  State<BottomNabBarView> createState() => _BottomNabBarViewState();
}

class _BottomNabBarViewState extends State<BottomNabBarView> {
  final List<Widget> _pages = [
    RecipeListPage(),
    RecipeRegisterPage(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '追加',
          )
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
