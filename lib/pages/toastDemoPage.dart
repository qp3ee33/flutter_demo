import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class ToastDemoPage extends StatefulWidget {
  @override
  _ToastDemoPageState createState() => _ToastDemoPageState();
}

class _ToastDemoPageState extends State<ToastDemoPage> {
  @override
  Widget build(BuildContext context) {
    FToast fToast = FToast();
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.greenAccent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check),
          SizedBox(
            width: 12.0,
          ),
          Text("This is a Custom Toast"),
        ],
      ),
    );
    _showToast() {
      fToast.showToast(
        child: toast,
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: 2),
      );
    }

    _showToastCancel() {
      Widget toastWithButton = Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.redAccent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                "This is a Custom Toast This is a Custom Toast This is a Custom Toast This is a Custom Toast This is a Custom Toast This is a Custom Toast",
                softWrap: true,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.close,
              ),
              color: Colors.white,
              onPressed: () {
                fToast.removeCustomToast();
              },
            )
          ],
        ),
      );
      fToast.showToast(
        child: toastWithButton,
        gravity: ToastGravity.CENTER,
        toastDuration: Duration(seconds: 50),
      );
    }

    _queueToasts() {
      fToast.showToast(
        child: toast,
        gravity: ToastGravity.CENTER,
        toastDuration: Duration(seconds: 2),
      );
      fToast.showToast(
        child: toast,
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: 2),
      );
      fToast.showToast(
        child: toast,
        gravity: ToastGravity.TOP,
        toastDuration: Duration(seconds: 2),
      );
      fToast.showToast(
        child: toast,
        gravity: ToastGravity.CENTER,
        toastDuration: Duration(seconds: 2),
      );
      fToast.showToast(
        child: toast,
        gravity: ToastGravity.TOP,
        toastDuration: Duration(seconds: 2),
      );
    }

    _removeToast() {
      fToast.removeCustomToast();
    }

    _removeAllQueuedToasts() {
      fToast.removeQueuedCustomToasts();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Toast"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Text("Flutter Toast No Context"),
          ),
          SizedBox(
            height: 24.0,
          ),
          RaisedButton(
            onPressed: () {
              _showToast();
            },
            child: Text("Flutter Toast Context"),
          ),
          SizedBox(
            height: 24.0,
          ),
          RaisedButton(
            child: Text("Custom Toast With Close Button"),
            onPressed: () {
              _showToastCancel();
            },
          ),
          SizedBox(
            height: 24.0,
          ),
          RaisedButton(
            child: Text("Queue Toasts"),
            onPressed: () {
              _queueToasts();
            },
          ),
          SizedBox(
            height: 24.0,
          ),
          RaisedButton(
            child: Text("Cancel Toast"),
            onPressed: () {
              _removeToast();
            },
          ),
          SizedBox(
            height: 24.0,
          ),
          RaisedButton(
            child: Text("Remove Queued Toasts"),
            onPressed: () {
              _removeAllQueuedToasts();
            },
          ),
        ],
      ),
    );
  }
}
