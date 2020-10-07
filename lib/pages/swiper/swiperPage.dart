import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PageSwiper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageSwiperState();
  }
}

class _PageSwiperState extends State<PageSwiper> {
  SwiperPagination myPagination;
  SwiperControl myControl;
  SwiperController myController = SwiperController();
  @override
  Widget build(BuildContext context) {
    this.myPagination = SwiperPagination(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.all(10.0),
      builder: SwiperPagination.dots, // 自定义
    );
    this.myControl = SwiperControl(
        iconPrevious: Icons.arrow_back_ios,
        iconNext: Icons.arrow_forward_ios,
        color: Theme.of(context).primaryColor,
        size: 30.0,
        padding: EdgeInsets.all(5.0));
    return Scaffold(
        appBar: AppBar(
          title: Text("PageSwiper"),
        ),
        body: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.network(
                      "http://via.placeholder.com/350x150",
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: 3,
                  itemWidth: 300.0,
                  itemHeight: 200.0,
                  pagination: this.myPagination,
                  control: this.myControl,
                  controller: myController,
                  scrollDirection:
                      Axis.horizontal, // 滚动方向，设置为Axis.vertical如果需要垂直滚动
                  duration: 100,
                 
                ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                  child: Text("开始轮播"),
                  onPressed: () {
                    this.myController.startAutoplay();
                  }),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                  child: Text("停止轮播"),
                  onPressed: () {
                    this.myController.stopAutoplay();
                  }),
            ),
          ],
        ));
  }
}
