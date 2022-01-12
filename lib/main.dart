import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_networking_and_forum_mobile_app_clone/screens/connection/connection_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: const ConnectionScreen(),
    );
  }
}
