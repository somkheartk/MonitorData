import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monitordata/states/authen.dart';

Future<void> main() async {
   
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Authen(),
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
          scaffoldBackgroundColor: Colors.white),
    );
  }
}
