import 'package:flutter/material.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = "home_view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(
            width: 8,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.brightness_6)),
        ],
      ),
      body: const HomeViewBody(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
            ),
            label: "Buesniess"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.sports,
            ),
            label: "Sports"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.science,
            ),
            label: "Science"),
      ]),
    );
  }
}
