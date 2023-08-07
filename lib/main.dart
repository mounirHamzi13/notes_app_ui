import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app_ui/screens/home_screen.dart';
import 'package:notes_app_ui/screens/note_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/':(context) => MyHomePage() , 
        NoteDetaiScreen.routeName :(context) => NoteDetaiScreen() ,
      },
      theme: ThemeData(
          textTheme: TextTheme(
              bodyMedium: GoogleFonts.poppins(fontSize: 17, color: Colors.grey),
              bodyLarge: GoogleFonts.poppins(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              headlineLarge: GoogleFonts.robotoCondensed(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 60,
                letterSpacing: -1.5,
              ))),
      // home:  MyHomePage(),
    );
  }
}

