import 'package:flutter/material.dart';
import 'package:invoice_app/global/theme.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invoice App',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: GlobalTheme.primaryColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: GlobalTheme.primaryColor,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        fontFamily: "Onest",
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
