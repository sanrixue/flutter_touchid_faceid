# flutter_touchid_faceid

> 一个开启检测人脸、指纹的插件



## 最新动态
### 🔥 `flutter_touchid_faceid 0.1.0` 即将发布
> 按时间顺序,展示重要的提交更新内容。


## 版本更新历史
> 按时间顺序,展示重要的提交更新内容。


## 运行方式

- 查看一下版本号是否正确
```dart
  flutter --version
```
- 运行以下命令查看是否需要安装其它依赖项来完成安装
```dart
  flutter doctor
```
- 运行启动您的应用
```dart
  flutter packages get 
  flutter run
```

- 如果有其他问题,请参考
  - https://flutterchina.club/setup-macos/
  - https://flutter.dev/docs/get-started/install/macos

## Usage
```dart
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
    返回String
    成功 success
    失败 fail
    不支持TouchID/FaceID notSupported
    多次错误，已被锁定 failInputPassword
    
```




## 基础环境
本项目环境V1.7.8+4

```dart
// 运行如下命令
flutter --version
dart --version
pub --version

// 正确环境如下
// Flutter (Channel beta, v1.7.8)
// Dart VM version: 2.4.0
// Pub 2.4.0
```


### 背景

#### Flutter 是什么?

2018年6月21日Google发布Flutter首个release预览版,作为Google 大力推出的一种全新的响应式，跨平台，高性能的移动开发框架。Flutter是一个跨平台的移动UI框架，旨在帮助开发者使用一套代码开发高性能、高保真的Android和iOS应用。

flutter优点主要包括：
- 跨平台
- 开源
- Hot Reload、响应式框架、及其丰富的控件以及开发工具
- 灵活的界面设计以及控件组合
- 借助可以移植的GPU加速的渲染引擎以及高性能ARM代码运行时已达到高质量的用户体验

### app 预览

<img src="https://github.com/sanrixue/macdown/blob/master/faceIDCheck.gif?raw=true" width=200> 
<img src="https://github.com/sanrixue/macdown/blob/master/touchIDCheck.giff?raw=true" width=200> 

### Core Team

<table>
  <tbody>
    <tr>
      <td align="center" width="80" valign="top">
        <img height="80" width="80" src="https://github.com/sanrixue/macdown/blob/master/WechatIMG6.jpeg?raw=true">
        <br>
        <a href="https://github.com/sanrixue">@Eureka</a>
      </td>
     </tr>
  </tbody>
</table>

### 版权说明
- 感谢大家对 `flutter_touchid_faceid` 的支持和下载。

- 大家的互相信任，尊重与支持，才是开源社区前进的动力和来源.

Powered by Eureka
