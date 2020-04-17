import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  final String text;

  const Page4({Key key, this.text = "无参数"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("PageFour"),
      ),
      body: Center(
        child: Text(text),
      ),
      floatingActionButton: FloatingActionButton(
       onPressed: (){
          Navigator.of(context).pop();
        },
        child: Text('back'),
      ),
    );
  }
}