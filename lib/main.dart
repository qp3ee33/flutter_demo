
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:route_demo/inherited/loginInherited.dart';
import 'package:route_demo/model/loginInfoModel.dart';
import 'package:route_demo/pages/homePage.dart';
import 'package:route_demo/pages/routerDemo/page404.dart';
import 'package:route_demo/router/routeTable.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() => runApp(MyApp4());

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
            if(settings.arguments != null){
              // 有参数的情况
              return MaterialPageRoute(
                builder: (context) => pageBuilder(context,arguments: settings.arguments),
                settings: settings
              );
            }         
            return MaterialPageRoute(
              builder: (context) => pageBuilder(context),
              settings: settings
            );
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
            // 判断是否登录状态
            
            // 能在路由表内找到的情况 
            if(settings.arguments != null){
              // 有参数的情况
              return MaterialPageRoute(
                builder: (context) => pageBuilder(context,arguments: settings.arguments),
                settings: settings
              );
            }         
            return MaterialPageRoute(
              builder: (context) => pageBuilder(context),
              settings: settings
            );
          }else{
            // 找不到直接跳转404页面
            return MaterialPageRoute(builder: (context) => Page404());
          }
        },
      )
    );
  }
}

class MyApp4 extends StatelessWidget{
  MyApp4({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RefreshConfiguration(
      footerTriggerDistance: 15,
      dragSpeedRatio: 0.91,
      headerBuilder: () => MaterialClassicHeader(),
      footerBuilder: () => ClassicFooter(),
      enableLoadingWhenNoData: false,
      shouldFooterFollowWhenNotFull: (state) {
        // If you want load more with noMoreData state ,may be you should return false
        return false;
      },
      child: MaterialApp(
        theme: ThemeData(
            // This is the theme of your application.
            //s
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
            // counter didn't reset back to zero; the application is not restarted.
            primarySwatch: Colors.blue,
            primaryColor: Colors.blueAccent),
        localizationsDelegates: [
          RefreshLocalizations.delegate, // 这行是下拉刷新的国际化支持
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: [
          const Locale('en'),
          const Locale('zh'),
          const Locale('ja'),
        ],
        // locale: const Locale('en'), 不指定语言的时候按照系统语言为准
        localeResolutionCallback:
            (Locale locale, Iterable<Locale> supportedLocales) {
          //print("change language");
          return locale;
        },
        home: HomePage(),
        onGenerateRoute: (RouteSettings settings){
          final String name = settings.name;
          final Function pageBuilder = mainRoutes(context)[name];
           if(pageBuilder != null){
            // 判断是否登录状态
            
            // 能在路由表内找到的情况 
            if(settings.arguments != null){
              // 有参数的情况
              return MaterialPageRoute(
                builder: (context) => pageBuilder(context,arguments: settings.arguments),
                settings: settings
              );
            }         
            return MaterialPageRoute(
              builder: (context) => pageBuilder(context),
              settings: settings
            );
          }else{
            // 找不到直接跳转404页面
            return MaterialPageRoute(builder: (context) => Page404());
          }
        },
      )
    );
  }
}