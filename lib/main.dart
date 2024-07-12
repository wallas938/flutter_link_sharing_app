import 'package:flutter/material.dart';
import 'package:flutter_link_sharing_app/Pages/signup_page.dart';
import 'package:flutter_link_sharing_app/pages/editor/editor_page.dart';
import 'package:flutter_link_sharing_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Link Sharing App',
      theme: ThemeData(fontFamily: "Instrument Sans"),
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/editor': (context) => const EditorPage()
      },
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
