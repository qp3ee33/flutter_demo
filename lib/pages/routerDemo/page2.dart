import 'package:flutter/material.dart';
import 'package:route_demo/model/textModel.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextModel textModel = ModalRoute.of(context).settings.arguments;
    if (textModel == null){
      textModel = TextModel("default","default");
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(textModel.title),
      ),
      body: Center(
        child: Text(textModel.description),
      ),
      floatingActionButton: FloatingActionButton(
       onPressed: (){
          Navigator.of(context).pushNamed('/page4',arguments: 'page2传来的参数');
        },
        child: Text('无参'),
      ),
    );
  }
  
}