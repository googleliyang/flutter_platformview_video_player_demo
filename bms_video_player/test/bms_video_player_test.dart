import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bms_video_player/bms_video_player.dart';

void main() {
  const MethodChannel channel = MethodChannel('bms_video_player');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
//    expect(await new BmsVideoPlayerController().platformVersion, '42');
  });
}
