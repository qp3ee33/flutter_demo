import 'package:flutter/material.dart';
import 'package:route_demo/model/loginInfoModel.dart';

class LoginInherited extends InheritedWidget {
  LoginInherited({Key key, this.child, this.loginInfoModel}) : super(key: key, child: child);
  final LoginInfoModel loginInfoModel;

  final Widget child;

  static LoginInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify( LoginInherited oldWidget) {
    return oldWidget.loginInfoModel != loginInfoModel;
  }
}