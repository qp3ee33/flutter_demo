
import 'package:flutter/material.dart';
import 'package:route_demo/pages/formPage.dart';
import 'package:route_demo/pages/homePage.dart';
import 'package:route_demo/pages/page1.dart';
import 'package:route_demo/pages/page2.dart';
import 'package:route_demo/pages/page3.dart';
import 'package:route_demo/pages/page404.dart';
import 'package:route_demo/pages/routerDemo.dart';

Map<String, WidgetBuilder> mainRoutes(context) {
  return {
    "/":(context) => HomePage(),
    "/page1":(context) => PageOne(),
    "/page2":(context,{arguments}) => PageTwo(),
    "/page3":(context) => PageThree(),
    "/route":(context) => RoutePage(),
    "/form":(context) => FormPage(),
    "/404":(context) => Page404(),
  };
}