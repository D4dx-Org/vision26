// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:vision_2026/constants/theme.dart';
import 'package:vision_2026/providers/home_provider.dart';
import 'package:vision_2026/screens/splash_screen/splashscreen.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isTestMode = Platform.isLinux;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: !isTestMode
          ? MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Vision 2026',
              theme: AppTheme.lightTheme(context),
              home: const SplashScreen(),
            )
          : DevicePreview(
              enabled: true,
              isToolbarVisible: false,
              builder: (context) => MaterialApp(
                useInheritedMediaQuery: true,
                theme: AppTheme.lightTheme(context),
                home: const SplashScreen(),
                locale: DevicePreview.locale(context),
                builder: DevicePreview.appBuilder,
                debugShowCheckedModeBanner: false,
                title: 'Vision 2026',
              ),
            ),
    );
  }
}
