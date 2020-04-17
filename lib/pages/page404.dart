import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("404"),
      ),
      body: Center(
        child: Text('找不到页面'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // 销毁所有之前的页面并跳转新页面
          // Navigator.of(context).pushNamedAndRemoveUntil('/page1',(route) => false);
          // 销毁本页并跳转
          // Navigator.of(context).popAndPushNamed('/page1');
          Navigator.of(context).popAndPushNamed('/');
        },
        child: Text('anyPage'),
      ),
    );
  }
  
}