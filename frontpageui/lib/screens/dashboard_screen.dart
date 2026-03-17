import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("ServEase Dashboard"),
        centerTitle: true,
      ),

      body: Center(
        child: Text(
          "Welcome to ServEase",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }
}