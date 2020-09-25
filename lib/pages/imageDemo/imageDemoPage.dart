import 'package:flutter/material.dart';

class ImageDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('image插件'),
      ),
      body: new Center(
        child: new Text('image插件介绍'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              child: Center(
                child: SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: CircleAvatar(
                    child: Text('Image'),
                  ),
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('显示图片'),
                onTap: () {
                  Navigator.of(context).pushNamed('/imageDemo/showImage');
                }),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('图片处理'),
                onTap: () {
                  Navigator.of(context).pushNamed('/page2');
                }),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('输出图片'),
                onTap: () {
                  Navigator.of(context).pushNamed('/toastDemo');
                }),
          ],
        ),
      ),
    );
  }
}