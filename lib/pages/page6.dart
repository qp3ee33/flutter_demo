import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select a button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            RaisedButton(
            child: Text("右弹出"),
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => NextPage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position:
                        animation.drive(Tween(begin: Offset(1.0, 0.0), end: Offset.zero).chain(CurveTween(curve: Curves.ease))),
                    child: child,
                  );
                })
              );
            }),
            RaisedButton(
            child: Text("左弹出"),
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => NextPage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position:
                        animation.drive(Tween(begin: Offset(-1.0, 0.0), end: Offset.zero).chain(CurveTween(curve: Curves.ease))),
                    child: child,
                  );
                })
              );
            }),
            RaisedButton(
            child: Text("下弹出"),
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => NextPage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position:
                        animation.drive(Tween(begin: Offset(0.0, 1.0), end: Offset.zero).chain(CurveTween(curve: Curves.ease))),
                    child: child,
                  );
                })
              );
            }),
            RaisedButton(
            child: Text("上弹出"),
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => NextPage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position:
                        animation.drive(Tween(begin: Offset(0.0, -1.0), end: Offset.zero).chain(CurveTween(curve: Curves.ease))),
                    child: child,
                  );
                })
              );
            }),
            RaisedButton(
            child: Text("缩放过渡"),
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => NextPage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return ScaleTransition(
                    scale: Tween<double>(
                      begin: 0.0,
                      end: 1.0,
                    ).animate(
                      CurvedAnimation(
                        parent: animation,
                        curve: Curves.fastOutSlowIn,
                      ),
                    ),
                    child: child,
                  );
                })
              );
            })
          ]
        )
      ),
    );
    
  }
}
class NextPage extends StatelessWidget {
  const NextPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(child: Text("下一页")),
    );
  }
}