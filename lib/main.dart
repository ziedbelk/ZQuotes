import 'package:flutter/material.dart';
import 'package:quote/ul/pages/common/quote.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quote/ul/pages/quotescreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Flutter Demo",
      theme: ThemeData(
          ////// primarySwatch: Colors.redAccent,
          ),
      home: Quotescreen(),
    );
  }
}
