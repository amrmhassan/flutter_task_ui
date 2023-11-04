// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_task/widgets/home_down_part.dart';
import 'package:ui_task/widgets/home_upper_part.dart';

enum NavBarItem {
  categories,
  services,
  orders,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 2,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Home'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
          ),
        ),
      ),
      body: Column(
        children: [
          HomeUpperPart(),
          Expanded(
            child: HomeDownPart(),
          ),
        ],
      ),
    );
  }
}
