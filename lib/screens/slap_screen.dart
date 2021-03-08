import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SlapScreen extends StatefulWidget {
  const SlapScreen({Key key}) : super(key: key);

  @override
  _SlapScreenState createState() => _SlapScreenState();
}

class _SlapScreenState extends State<SlapScreen> {
  @override
  void initState() {
    Firebase.initializeApp();
    Future.delayed(Duration(milliseconds: 300),
        () => Navigator.of(context).pushReplacementNamed('/home'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
