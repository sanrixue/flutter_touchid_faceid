import 'dart:async';

import 'package:flutter/services.dart';

class FlutterTouchidFaceid {
  static const MethodChannel _channel =
      const MethodChannel('flutter_touchid_faceid');


  static Future<String> get check async {
    final String version = await _channel.invokeMethod('io.flutter_touchid_faceid.check');
    return version;
  }



}
