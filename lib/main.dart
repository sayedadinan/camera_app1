import 'package:camera/camera.dart';

import 'package:flutter/material.dart';

import 'camerascreen.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //Ensure plugin services are initialized
  final cameras = await availableCameras(); 
  runApp(MyApp(cameras: cameras));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;

  const MyApp({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CameraScreen(cameras: cameras),
    );
  }
}
