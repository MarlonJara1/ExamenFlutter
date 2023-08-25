// import 'package:aves_flutter/screen_views/aves.dart';
import 'package:aves_flutter/screen_views/gym.dart';
// import 'package:aves_flutter/screen_views/products.dart';
import 'package:aves_flutter/themes/app_themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

   @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gym(),
      theme: AppTheme.darkTheme,
          );
  }
}