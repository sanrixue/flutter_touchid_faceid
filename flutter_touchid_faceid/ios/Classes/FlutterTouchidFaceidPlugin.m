#import "FlutterTouchidFaceidPlugin.h"
#import "YZAuthID.h"

@implementation FlutterTouchidFaceidPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_touchid_faceid"
            binaryMessenger:[registrar messenger]];
  FlutterTouchidFaceidPlugin* instance = [[FlutterTouchidFaceidPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"io.flutter_touchid_faceid.check" isEqualToString:call.method]) {
      YZAuthID *authID = [[YZAuthID alloc] init];
      [authID yz_showAuthIDWithDescribe:nil block:^(YZAuthIDState state, NSError *error) {
          if (state == YZAuthIDStateNotSupport) { // 不支持TouchID/FaceID
              result(@"notSupported");
          } else if(state == YZAuthIDStateFail) { // 认证失败
              result(@"fail");
          } else if(state == YZAuthIDStateTouchIDLockout) {   // 多次错误，已被锁定
//              result(@"多次错误，指纹/面容ID已被锁定，请到手机解锁界面输入密码");
               result(@"failInputPassword");
          } else if (state == YZAuthIDStateSuccess) { // TouchID/FaceID验证成功
              result(@"scuess");
          }
          else{ //不是以上情况统统为失败
              result(@"fail");
          }
      }];
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
