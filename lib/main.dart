import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:news/newspage.dart';
import 'package:news/shared_preference_service.dart';
import 'homepage.dart';

void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  // await SharedPreferencesService.init();
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white10);
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}
