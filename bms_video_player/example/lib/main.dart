import 'package:bms_video_player/BmsVideoPlayer.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:bms_video_player/bms_video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  var viewPlayerController;

  @override
  void initState() {
    super.initState();
//    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
//  Future<void> initPlatformState() async {
//    String platformVersion;
//    // Platform messages may fail, so we use a try/catch PlatformException.
//    try {
//      platformVersion = await BmsVideoPlayer.platformVersion;
//    } on PlatformException {
//      platformVersion = 'Failed to get platform version.';
//    }
//
//    // If the widget was removed from the tree while the asynchronous platform
//    // message was in flight, we want to discard the reply rather than calling
//    // setState to update our non-existent appearance.
//    if (!mounted) return;
//
//    setState(() {
//      _platformVersion = platformVersion;
//    });
//  }

  void onViewPlayerCreated(viewPlayerController) {

    this.viewPlayerController = viewPlayerController;

    this.viewPlayerController.loadUrl("http://jzvd.nathen.cn/c6e3dc12a1154626b3476d9bf3bd7266/6b56c5f0dc31428083757a45764763b0-5287d2089db37e62345123a1be272f8b.mp4");

  }


  @override
  Widget build(BuildContext context) {

    var x = 0.0;

    var y = 0.0;

    var width = 400.0;

    var height = width * 9.0 / 16.0;

    BmsVideoPlayer videoPlayer = new BmsVideoPlayer(

        onCreated: onViewPlayerCreated,

        x: x,

        y: y,

        width: width,

        height: height

    );


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: videoPlayer,

        ),
      ),
    );
  }
}
