import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './view/Cate.dart';
import './view/Cloud.dart';
import './view/Home.dart';

class ScaffoldRoute extends StatefulWidget {
  // Tabs({Key key}) : super(key: key);
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  int _current = 0;
  List _pageList = <Widget>[
    Home(),
    Cate(),
    Cloud(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("acfun"),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.dehaze,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
        drawer: MyDrawer(),
        body: this._pageList[this._current],
        // body: Text("hello"),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._current,
          onTap: (int index) {
            setState(() {
              this._current = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text("分类")),
            BottomNavigationBarItem(icon: Icon(Icons.cloud), title: Text("动态")),
            // BottomNavigationBarItem(icon: Icon(Icons.people),title: Text("我的"))
          ],
        ),
      ),
    );
  }
}
class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              // padding: const EdgeInsets.symmetric(horizontal: 4.0),
              padding: EdgeInsets.only(top: 10),
            ),
            Text(
              "用户中心（待设计）",
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}