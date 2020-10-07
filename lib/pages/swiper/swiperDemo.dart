import 'package:flutter/material.dart';

class SwiperDemo extends StatelessWidget {
  const SwiperDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("swipper插件"),
      ),
      body: Center(
        child: Text("swipper插件用法"),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
            child: Center(
              child: SizedBox(
                width: 100.0,
                height: 100.0,
                child: CircleAvatar(
                  child: Text('Swiper'),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('swiper基本'),
            onTap: () {
              Navigator.of(context).pushNamed('/swiper/1');
            }
          ),
           ListTile(
            leading: Icon(Icons.settings),
            title: Text('layout'),
            onTap: () {
              Navigator.of(context).pushNamed('/swiper/2');
            }
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('自定义swipper动画'),
            onTap: () {
              Navigator.of(context).pushNamed('/swiper/3');
            }
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('swipper事件绑定'),
            onTap: () {
              Navigator.of(context).pushNamed('/swiper/4');
            }
          ),
        ]),
      ),
    );
  }
}
