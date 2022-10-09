import "package:flutter/material.dart";
import "package:brandwave/pages/homePage.dart";
import "package:brandwave/pages/signInPage.dart";
import "package:brandwave/pages/signUpPage.dart";
import "package:brandwave/pages/uploadPage.dart";
import "package:brandwave/pages/selectLocation.dart";

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
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/signin": (context) => const SignInPage(),
        "/signUp": (context) => const SignUpPage(),
        "/uploadAd" : (context) => const UploadAd(),
        "/selectLocation" : (context) => const LocationPage(),
      },
    );
  }
}