import "package:flutter/material.dart";
import "package:brandwave/pages/homePage.dart";
import "package:brandwave/pages/signInPage.dart";
import "package:brandwave/pages/signUpPage.dart";

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      initialRoute: "create/",
      routes: {
        "/": (context) => const HomePage(),
        // "/": (context) => const SignInPage(),
        // "/signUp": (context) => const SignUpPage(),
        // "/create" : (context) => CreatePage()
      },
    );
  }
}