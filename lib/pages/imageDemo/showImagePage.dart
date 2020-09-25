// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:image/image.dart';

// class ShowImagePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _ShowImagePageState();
// }

// class _ShowImagePageState extends State<ShowImagePage> {
//    Image image;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ShowImage"),
//       ),
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           RaisedButton(
//             onPressed: () {
//               image = decodeImage(File('test.webp').readAsBytesSync());
//             },
//             child: Text("读取静态图片"),
//           ),
//         ]),
//       ),
//     );
//   }

//   void readImage(){
//     setState(() {
//       this.image = decodeJpg(File('test.jpg').readAsBytesSync());
//     });
//   }
// }
