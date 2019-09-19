import 'package:flutter/material.dart';

class ScaffoldRoute extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
 int _current=0;
 @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("acfun"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add),onPressed:(){} ,)
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:_current,
          onTap: (int index){
            setState((){
              _current=index;
            });
            },
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("首页")),
            BottomNavigationBarItem(icon: Icon(Icons.category),title: Text("分类")),
            BottomNavigationBarItem(icon: Icon(Icons.cloud),title: Text("动态")),
            // BottomNavigationBarItem(icon: Icon(Icons.people),title: Text("我的"))
          ]
           ,
        ),
      ),
    );
  }
}