import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_menu/presentation/screens/homepage/homepage.dart';
import 'package:one_menu/presentation/screens/loginscreen/loginscreen.dart';
import 'package:one_menu/presentation/screens/spalshscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //  final ConnectivityService connectivityService = ConnectivityService();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 802),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'One1Menu',
          theme: ThemeData(),
          home: Homepage(),
        );
      },
    );
  }
}
