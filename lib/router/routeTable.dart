
import 'package:flutter/material.dart';
import 'package:route_demo/pages/formPage.dart';
import 'package:route_demo/pages/homePage.dart';
// import 'package:route_demo/pages/imageDemo/imageDemoPage.dart';
// import 'package:route_demo/pages/imageDemo/showImagePage.dart';
import 'package:route_demo/pages/page1.dart';
import 'package:route_demo/pages/page2.dart';
import 'package:route_demo/pages/page3.dart';
import 'package:route_demo/pages/page4.dart';
import 'package:route_demo/pages/page404.dart';
import 'package:route_demo/pages/routeDestroy.dart';
import 'package:route_demo/pages/routerDemo.dart';
import 'package:route_demo/pages/swiper/swiperPage.dart';
import 'package:route_demo/pages/toastDemoPage.dart';

Map<String, WidgetBuilder> mainRoutes(context) {
  return {
    "/":(context) => HomePage(),
    "/page1":(context) => PageOne(),
    "/page2":(context,{arguments}) => PageTwo(),
    "/page3":(context,{arguments}) => PageThree(),
    "/page4":(context,{arguments}) => Page4(text: arguments),
    "/route":(context) => RoutePage(),
    "/route/destory/nextPage":(context) => NextPage(),
    "/404":(context) => Page404(),
    "/form":(context) => FormPage(),
    "/toastDemo":(context) => ToastDemoPage(),
    "/swiper":(context) => PageSwiper(),
    // "/imageDemo":(context) => ImageDemoPage(),
    //  "/imageDemo/showImage":(context) => ShowImagePage()
  };
}