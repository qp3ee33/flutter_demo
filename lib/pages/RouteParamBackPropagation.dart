import 'package:flutter/material.dart';

class RouteParamBackPropagationDemoPage extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select a button'),
      ),
      body: Center(
        child: RaisedButtonPage()
      ),
    );
    
  }
  
}
class RaisedButtonPage extends StatelessWidget {
  const RaisedButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: () {
            _navigateAndDisplaySelection(context);
          },
          child: Text('开始跳转'),
        ),
    );
  }
  _navigateAndDisplaySelection(BuildContext context) async {
    // 异步调用等待下一个页面的参数回传
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );
    // 用回传参数构建snack bar.
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}
class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, '我很帅');
                },
                child: Text('返回我很帅!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, '我很聪明!');
                },
                child: Text('返回我很聪明!'),
              ),
            )
          ],
        ),
      ),
    );
  }
}