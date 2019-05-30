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
