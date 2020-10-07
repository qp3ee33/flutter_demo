import 'package:flutter/material.dart';
import 'package:route_demo/model/textModel.dart';

import 'RouteParamBackPropagation.dart';
import 'page1.dart';
import 'page4.dart';
import 'routeCustom.dart';
import 'routeDestroy.dart';

class RoutePage extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('路由'),
        ),
        body: new Center(
          child: new Text('本单元我们将演示路由的相关用法。\n 1,静态路由 \n 2,动态路由 \n 3,路由传参 \n 4,参数回传 \n 5,自定义路由'),
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
              title: Text('静态路由跳转'),
              onTap: (){
                Navigator.of(context).pushNamed('/page1');
              }
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('动态路由跳转'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return PageOne();
                    },
                  )
                );
              }
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('静态路由传参'),
              onTap: (){
                Navigator.of(context).pushNamed('/page2',arguments: TextModel("从主页传来的textModel.title","从主页传来的textModel.description"));
              }
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('动态路由传参'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Page4(text:"动态路由传参");
                    },
                  )
                );
              }
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('路由参数回传'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return RouteParamBackPropagationDemoPage();
                    },
                  )
                );
              }
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('路由的销毁'),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return RouteDestroyPage();
                    },
                  )
                );
              }
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('自定义路由'),
              onTap: (){
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 1000),
                    transitionsBuilder: (_,Animation<double> animation,__,Widget child) => 
                      FadeTransition( 
                        opacity: animation,
                        child: new RotationTransition(
                          turns: new Tween<double>(begin: 0.0, end: 1.0)
                              .animate(animation),
                          child: child,
                        )
                      ),
                    pageBuilder: (context,_,__) => RouteCustomDemoPage(),
                  )
                );
              }
            )
          ],
          ),
          ),
      );
  }
}