import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullRefreshDemo extends StatefulWidget {
  PullRefreshDemo({Key key}) : super(key: key);

  @override
  _PullRefreshDemoState createState() => _PullRefreshDemoState();
}

class _PullRefreshDemoState extends State<PullRefreshDemo> {
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    items = ["1", "2", "3", "4", "5", "6", "7", "8"];// 模拟重新获取第一页
    // if failed,use refreshFailed()
    if (mounted) setState(() {});// 更新视图
    _refreshController.resetNoData(); // 不重置，刷新后依然无法重新加载更多数据
    _refreshController.refreshCompleted();// 刷新完成
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    int flag = Random().nextInt(3); // 模拟3种网络请求结果
    print(flag);
    if (flag == 0 ){ // 加载失败
      _refreshController.loadFailed();
    }else if(flag == 1){// 无法获取更多数据
      _refreshController.loadNoData();
    }else{ // 模拟获取一个新数据
    items.add((items.length + 1).toString());
    if (mounted) setState(() {});// 更新视图
    _refreshController.loadComplete();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: MaterialClassicHeader(),// WaterDropHeader /  BezierHeader / ClassicHeader / LinkHeader /MaterialClassicHeader/ WaterDropMaterialHeader/TwoLevelHeader
        // footer: CustomFooter( // 自定义页脚
        //   builder: (BuildContext context,LoadStatus mode){
        //     Widget body ;
        //     if(mode==LoadStatus.idle){
        //       body =  Text("上拉加载");
        //     }
        //     else if(mode==LoadStatus.loading){
        //       body =  CupertinoActivityIndicator();
        //     }
        //     else if(mode == LoadStatus.failed){
        //       body = Text("加载失败！点击重试！");
        //     }
        //     else if(mode == LoadStatus.canLoading){
        //        body = Text("松手,加载更多!");
        //     }
        //     else{
        //       body = Text("没有更多数据了!");
        //     }
        //     return Container(
        //       height: 55.0,
        //       child: Center(child:body),
        //     );
        //   },
        //   loadStyle: LoadStyle.ShowWhenLoading,//footer的显示 ShowAlways HideAlways
        // ),
         footer:ClassicFooter(),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView.builder(
          itemBuilder: (c, i) => Card(child: Center(child: Text(items[i]))),
          itemExtent: 100.0,
          itemCount: items.length,
        ),
      ),
    );
  }
}
