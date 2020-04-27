import 'package:flutter/material.dart';

class RouteDestroyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由的销毁"),
      ),
      body: Column(
        children:[
          Center(
              child: Text('Navigator提供了两种方法来销毁路由：\n 1,pushNamedAndRemoveUntil:销毁所有之前的页面并跳转 \n 2,popAndPushNamed:销毁本页并跳转'),
          ),
          RaisedButton(
            child: Text("不销毁路由"),
            onPressed: () {
              Navigator.of(context).pushNamed('/route/destory/nextPage');
            }
          ),
          RaisedButton(
            child: Text("销毁当前路由"),
            onPressed: () {
              Navigator.of(context).popAndPushNamed('/route/destory/nextPage');
            }
          ),
          RaisedButton(
            child: Text("销毁指定路由以后的所有路由"),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil('/route/destory/nextPage',
              ModalRoute.withName('/route/destory/nextPage'));
            }
          ),
          RaisedButton(
            child: Text("销毁所有路由"),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil('/route/destory/nextPage',(route) => false);
            }
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).popAndPushNamed('/');
        },
        child: Text('首页'),
      ),
    );
  }
  
}

class NextPage extends StatelessWidget {
  const NextPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("一个页面"),
          ),
        body:  Center(child: Text("这是一个页面"),),
        floatingActionButton: FloatingActionButton(
          child: Text("首页"),
          onPressed: (){
            Navigator.of(context).pushNamed('/');
          },
        ),
      );      
  }
}