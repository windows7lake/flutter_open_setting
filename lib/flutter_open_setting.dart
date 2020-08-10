import 'dart:async';

import 'package:flutter/services.dart';

class FlutterOpenSetting {
  static const MethodChannel _channel =
      const MethodChannel('flutter_open_setting');

  static Future<void> openSetting() async {
    await _channel.invokeMethod('openSetting');
  }
}
