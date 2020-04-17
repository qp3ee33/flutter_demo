
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('home'),
        ),
        body: new Center(
          child: new Text('欢迎来到由qp提供的flutter Demo世界'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children:<Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                ),
                child: Center(
                  child: SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: CircleAvatar(
                      child: Text('Route'),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('路由'),
                onTap: (){
                  Navigator.of(context).pushNamed('/route');
                }
              ),
              ListTile(
              leading: Icon(Icons.settings),
              title: Text('表单'),
              onTap: (){
                Navigator.of(context).pushNamed('/page2');
              }
            ),
            ],
          ),
          ),
      );
  }
}