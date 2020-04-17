import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageOne"),
      ),
      body: Center(
        child: Text('这是第一个页面'),
      ),
    );
  }
  
}