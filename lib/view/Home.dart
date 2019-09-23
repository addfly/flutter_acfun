import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List tabs = ["关注", "热门", "推荐"];
  List _imgList=[
      {
      "url":"https://static.maizuo.com/v5/upload/76528d0a054d6047c548854e9f26b777.jpg?x-oss-process=image/quality,Q_70"
    },
    {
      "url":"https://static.maizuo.com/v5/upload/21fc284251daa056cf445c828bf3f83c.jpg?x-oss-process=image/quality,Q_70"
    }
  ];
  @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading:Container(width: 0,height: 0),
          title: TabBar(
              controller: _tabController,
              tabs: tabs
                  .map((e) => Tab(
                        text: e,
                      ))
                  .toList()),
        ),
        body: TabBarView(
          controller:_tabController,
          children: tabs.map((e){
            return Column(
              children: <Widget>[
                Container(
                  child: Text("1"),
                ),
                AspectRatio(
                  aspectRatio: 16/9,
                  child: Swiper(
                    itemBuilder: (BuildContext context,int index){
                      return new Image.network(
                        _imgList[index]["url"],
                        fit: BoxFit.fill,
                      );
                    },
                      itemCount: _imgList.length,
                      pagination: new SwiperPagination(),
                      control: new SwiperControl(),
                    ),
                ),
                Container(
                  child: Text("2"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("点击弹出对话框"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/dialog");
                      },
                      )
                  ],
                ),
                Container(
                  child: Text("3"),
                ),
              ],
            );
          }).toList(),
        ),
      );
  }
}


