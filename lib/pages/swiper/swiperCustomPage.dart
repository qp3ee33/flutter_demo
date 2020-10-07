import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PageCustomSwiper extends StatelessWidget {
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
          itemWidth: 300.0,
          itemHeight: 200.0,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
          autoplay: true,
          layout: SwiperLayout.CUSTOM,
          customLayoutOption: CustomLayoutOption(
            startIndex: -1, /// 开始下标
            stateCount: 3, /// 下面的数组长度 
            )
             .addRotate([-45.0 / 180, 0.0, 45.0 / 180]). //  每个元素的角度
             addTranslate([ /// 每个元素的偏移
             Offset(-370.0, -40.0),
             Offset(0.0, 0.0),
             Offset(370.0, -40.0)
          ]),
        ),
      ),
    );
  }
}
