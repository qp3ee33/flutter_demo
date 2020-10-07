import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PageLayoutSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageSwiper"),
      ),
      body: Container(
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
          // viewportFraction: 0.8,
          // scale: 0.9,
          itemWidth: 300.0,
          itemHeight: 400.0,
          layout: SwiperLayout.TINDER,
          // layout: SwiperLayout.STACK,
          autoplay: true,
        ),
      ),
    );
  }
}
