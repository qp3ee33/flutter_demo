
import 'package:flutter/material.dart';
import 'package:route_demo/inherited/loginInherited.dart';
import 'package:route_demo/model/loginInfoModel.dart';

class Page404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Text('请输入账号密码'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // 模拟登录操作
          LoginInfoModel loginInfoModel = LoginInherited.of(context).loginInfoModel;
          // loginInfoModel.userName = "user123";
          Navigator.of(context).pushNamedAndRemoveUntil('/page1',(route) => false);
        },
        child: Text('登录'),
      ),
    );
  }
  
}