import 'package:flutter/material.dart';
import 'package:route_demo/pages/formPage.dart';
import 'package:route_demo/pages/homePage.dart';
// import 'package:route_demo/pages/imageDemo/imageDemoPage.dart';
// import 'package:route_demo/pages/imageDemo/showImagePage.dart';
import 'package:route_demo/pages/routerDemo/page1.dart';
import 'package:route_demo/pages/routerDemo/page2.dart';
import 'package:route_demo/pages/routerDemo/page3.dart';
import 'package:route_demo/pages/routerDemo/page4.dart';
import 'package:route_demo/pages/routerDemo/page404.dart';
import 'package:route_demo/pages/routerDemo/routeDestroy.dart';
import 'package:route_demo/pages/routerDemo/routerDemo.dart';
import 'package:route_demo/pages/swiper/swiperCustomPage.dart';
import 'package:route_demo/pages/swiper/swiperDemo.dart';
import 'package:route_demo/pages/swiper/swiperEventPage.dart';
import 'package:route_demo/pages/swiper/swiperLayoutPage.dart';
import 'package:route_demo/pages/swiper/swiperPage.dart';
import 'package:route_demo/pages/timePicker.dart';
import 'package:route_demo/pages/toastDemoPage.dart';

Map<String, WidgetBuilder> mainRoutes(context) {
  return {
    "/": (context) => HomePage(),
    "/page1": (context) => PageOne(),
    "/page2": (context, {arguments}) => PageTwo(),
    "/page3": (context, {arguments}) => PageThree(),
    "/page4": (context, {arguments}) => Page4(text: arguments),
    "/route": (context) => RoutePage(),
    "/route/destory/nextPage": (context) => NextPage(),
    "/404": (context) => Page404(),
    "/form": (context) => FormPage(),
    "/toastDemo": (context) => ToastDemoPage(),
    "/swiper": (context) => SwiperDemo(),
    "/swiper/1": (context) => PageSwiper(),
    "/swiper/2": (context) => PageLayoutSwiper(),
    "/swiper/3": (context) => PageCustomSwiper(),
    "/swiper/4": (context) => PageEventSwiper(),
    "/datetimePicker": (context) => TimePickerDemo(),
    // "/imageDemo":(context) => ImageDemoPage(),
    //  "/imageDemo/showImage":(context) => ShowImagePage()
  };
}
