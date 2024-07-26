import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoredo/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoredo/theme/theme_provider.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).orangeData,
    );
  }
}
