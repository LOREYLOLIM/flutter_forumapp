import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final box = GetStorage();
    // var token = box.read('token');

    return Scaffold(
      body: Center(
        // child: Text(token),
        child: Text('Home Page'),
      ),
    );
  }
}
