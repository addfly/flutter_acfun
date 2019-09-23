import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogDemo extends StatefulWidget {
  @override
  _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  void showCenterShortToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void areyouok() async{
    var result = await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Text("重要数据,请确认删除"),
          actions: <Widget>[
            FlatButton(
              child: Text("取消"),
              onPressed: () => {
                    Navigator.pop(context,"cancel"),
                  },
            ),
            FlatButton(
              child: Text("确定"),
              onPressed: () => {Navigator.pop(context,"ok"),},
            ),
          ],
        );
      },
    );
    print(result);
  }

  void showLoading(){
    showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircularProgressIndicator(),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text("正在加载，请稍后..."),
              )
            ],
          ),
        );
      }
      
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("弹出框demo"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("外部的弹出提示"),
              onPressed: showCenterShortToast,
            ),
            RaisedButton(
              child: Text("删除提示"),
              onPressed: areyouok,
            ),
            RaisedButton(
              child: Text("显示加载"),
              onPressed: showLoading,
            )
          ],
        ),
      ),
    );
  }
}
