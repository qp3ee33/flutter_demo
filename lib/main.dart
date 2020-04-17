
import 'package:flutter/material.dart';
import 'package:route_demo/inherited/loginInherited.dart';
import 'package:route_demo/model/loginInfoModel.dart';
import 'package:route_demo/pages/homePage.dart';
import 'package:route_demo/pages/page404.dart';
import 'package:route_demo/router/routeTable.dart';
void main() => runApp(MyApp2());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes:mainRoutes(context)
    );
  }
}

class MyApp2 extends StatelessWidget {
  MyApp2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: HomePage(),
        onGenerateRoute: (RouteSettings settings){
          final String name = settings.name;
          final Function pageBuilder = mainRoutes(context)[name];
          if(pageBuilder != null){
            // 能在路由表内找到的情况          
            return MaterialPageRoute(builder: (context) => pageBuilder(context));
          }else{
            // 找不到直接跳转404页面
            return MaterialPageRoute(builder: (context) => Page404());
          }
        },
      );
  }
}

class MyApp3 extends StatelessWidget{
  MyApp3({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LoginInherited(
      loginInfoModel: LoginInfoModel("", "", ""),
      child: MaterialApp(
        home: HomePage(),
        onGenerateRoute: (RouteSettings settings){
          final String name = settings.name;
          final Function pageBuilder = mainRoutes(context)[name];
          if(pageBuilder != null){
            // 能在路由表内找到的情况
            // 已经登录的情况
            LoginInfoModel loginInfoModel = LoginInherited.of(context).loginInfoModel;
            if(loginInfoModel.userName == ""){
              
            }
            return MaterialPageRoute(builder: (context) => pageBuilder(context));
          }else{
            // 找不到直接跳转404页面
            return MaterialPageRoute(builder: (context) => Page404());
          }
        },
      )
    );
  }
}