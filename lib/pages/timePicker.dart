import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TimePickerDemo extends StatelessWidget {
  const TimePickerDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text('Datetime Picker'),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                child: Text(
                  '显示日期选择(自定义样式 &可选日期范围)',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: (){
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(1918, 3, 5),
                      maxTime: DateTime(2020, 10, 09),
                      theme: DatePickerTheme(
                          headerColor: Colors.orange,
                          backgroundColor: Colors.blue,
                          itemStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                          doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
                      onChanged: (date) {
                        Fluttertoast.showToast(
                          msg: "change $date in time zone" + date.timeZoneOffset.inHours.toString(),
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    onConfirm: (date) {
                      Fluttertoast.showToast(
                          msg: "confirm $date",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }, 
                    currentTime: DateTime.now(),
                     locale: LocaleType.zh
                  );
                },
              ),
              RaisedButton(
                child: Text(
                  '显示时间选择',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: (){
                  DatePicker.showTimePicker(context,
                      showTitleActions: true,
                      theme: DatePickerTheme(
                          headerColor: Colors.orange,
                          backgroundColor: Colors.blue,
                          itemStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                          doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
                      onChanged: (date) {
                        Fluttertoast.showToast(
                          msg: "change $date in time zone" + date.timeZoneOffset.inHours.toString(),
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    onConfirm: (date) {
                      Fluttertoast.showToast(
                          msg: "confirm $date",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }, 
                    currentTime: DateTime.now(),
                     locale: LocaleType.en
                  );
                },
              ),
              RaisedButton(
                child: Text(
                  '显示12小时制时间选择',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: (){
                  DatePicker.showTime12hPicker(context,
                      showTitleActions: true,
                      theme: DatePickerTheme(
                          headerColor: Colors.orange,
                          backgroundColor: Colors.blue,
                          itemStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                          doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
                      onChanged: (date) {
                        Fluttertoast.showToast(
                          msg: "change $date in time zone" + date.timeZoneOffset.inHours.toString(),
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    onConfirm: (date) {
                      Fluttertoast.showToast(
                          msg: "confirm $date",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }, 
                    currentTime: DateTime.now(),
                     locale: LocaleType.en
                  );
                },
              ),
              RaisedButton(
                child: Text(
                  '显示日期时间选择',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: (){
                  DatePicker.showDateTimePicker(context,
                      showTitleActions: true,
                      theme: DatePickerTheme(
                          headerColor: Colors.orange,
                          backgroundColor: Colors.blue,
                          itemStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                          doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
                      onChanged: (date) {
                        Fluttertoast.showToast(
                          msg: "change $date in time zone" + date.timeZoneOffset.inHours.toString(),
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                      onConfirm: (date) {
                        Fluttertoast.showToast(
                            msg: "confirm $date",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }, 
                      currentTime: DateTime.now(),
                      locale: LocaleType.zh
                  );
                },
              ),
              RaisedButton(
                child: Text(
                  '显示日语日期时间选择',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: (){
                  DatePicker.showDateTimePicker(context,
                      showTitleActions: true,
                      onChanged: (date) {
                        Fluttertoast.showToast(
                          msg: "change $date in time zone" + date.timeZoneOffset.inHours.toString(),
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.grey,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                      onConfirm: (date) {
                        Fluttertoast.showToast(
                            msg: "confirm $date",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.grey,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }, 
                      currentTime: DateTime.now(),
                      locale: LocaleType.jp
                  );
                },
              ),
            ],
          ),
        ),
      );
  }
}