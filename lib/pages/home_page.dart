// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_task/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icons/avatar.png',
              ),
              Text('Hey, Ahmed'),
              Image.asset(
                'assets/icons/hand.png',
              ),
            ],
          ),
          Text('Multi-Services for Your Real Estate Needs'),
          Text(
            'Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.',
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: AppColors.cardBackground,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Multi-Services for Your Real Estate Needs',
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Order',
                      ),
                    ),
                  ],
                ),
                Image.asset('assets/icons/main.png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
