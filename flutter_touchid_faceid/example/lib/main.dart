import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_touchid_faceid/flutter_touchid_faceid.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _checkStatus = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> check() async {
    String checkStatus;
    try {
      checkStatus = await FlutterTouchidFaceid.check;
    } on PlatformException {
      checkStatus = 'fail';
    }
    if (!mounted) return;
    setState(() {
      print(checkStatus);
      _checkStatus = checkStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FlutterTouchidFaceidPlugin'),
        ),
        body: Center(
          
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('FlutterTouchidFaceidPlugin',style: TextStyle(fontSize: 25),),
              new Text('验证登录',style: TextStyle(fontSize: 20),),
               RaisedButton(
                onPressed: () {
                  check();
                },
                child: Text("点击验证"),
              ),
              new Text(_checkStatus,style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
