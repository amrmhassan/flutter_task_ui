import 'package:flutter/material.dart';
import 'package:ui_task/widgets/app_nav_bar_widget.dart';
import 'package:ui_task/widgets/home_down_part.dart';
import 'package:ui_task/widgets/home_upper_part.dart';

enum HomeNavBarItem {
  users,
  services,
  orders,
}

enum AppNavBarItem {
  home,
  assets,
  support,
  profile,
}

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(
        child: Center(child: Text('Drawer Content')),
      ),
      extendBody: false,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 2,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Home'),
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
          ),
        ),
      ),
      body: const Column(
        children: [
          Expanded(
            child: Column(
              children: [
                HomeUpperPart(),
                Expanded(
                  child: HomeDownPart(),
                ),
              ],
            ),
          ),
          AppNavBarWidget(),
        ],
      ),
    );
  }
}
