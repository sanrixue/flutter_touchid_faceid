import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_touchid_faceid/flutter_touchid_faceid.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_touchid_faceid');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterTouchidFaceid.platformVersion, '42');
  });
}
