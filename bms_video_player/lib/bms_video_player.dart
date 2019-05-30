import 'dart:async';

import 'package:flutter/services.dart';

class BmsVideoPlayer {
  static const MethodChannel _channel =
      const MethodChannel('bms_video_player');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

typedef void BmsVideoPlayerCreatedCallback(BmsVideoPlayerController controller);

class BmsVideoPlayerController {

  MethodChannel _channel;

  BmsVideoPlayerController.init(int id) {

    _channel =  new MethodChannel('bms_video_player_$id');

  }

  Future<void> loadUrl(String url) async {

    assert(url != null);

    return _channel.invokeMethod('loadUrl', url);

  }

}

