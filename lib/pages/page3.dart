import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text = ModalRoute.of(context).settings.arguments;
    if (text == null){
      text = "无参数";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("PageThree"),
      ),
      body: Center(
        child: Text(text),
      ),
      floatingActionButton: FloatingActionButton(
       onPressed: (){
          Navigator.of(context).pushNamed('/asdv');
        },
        child: Text('404'),
      ),
    );
  }
}