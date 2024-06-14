import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_multi_web_admin/views/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: kIsWeb || Platform.isAndroid ? const FirebaseOptions(
        apiKey: "AIzaSyAM2-P0qucZCsYtakgzhueM6s8z4YLpX68",
        appId: "1:1011184674042:web:f9bb6621aa75088b4ad543",
        messagingSenderId: "1:1011184674042:web:f9bb6621aa75088b4ad543",
        projectId: "1:1011184674042:web:f9bb6621aa75088b4ad543",
    storageBucket: "flutter-multi-store-app-69e57.appspot.com") : null
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
      builder: EasyLoading.init(),
    );
  }
}
