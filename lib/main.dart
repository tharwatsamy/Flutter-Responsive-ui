import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutterresoinsiveui/core/ui_components/info_widget.dart';

void main() => runApp(DevicePreview(builder: (context) => MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        body: Container(
          color: Colors.black,
          width: screenWidth / 2,
          height: screenHeight / 2,
          child: InfoWidget(
            builder: (context, deviceInfo) {
              print(deviceInfo.orientation);
              print(deviceInfo.deviceType);
              print(deviceInfo.screenWidth);
              print(deviceInfo.screenHeight);
              print(deviceInfo.localWidth);
              print(deviceInfo.localHeight);
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
