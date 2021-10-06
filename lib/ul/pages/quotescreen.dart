import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quote/ul/pages/common/quote.dart';
import 'package:random_color/random_color.dart';
import 'package:quote/ul/pages/common/quote.dart';

class Quotescreen extends StatelessWidget {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('quotes');
  final RandomColor _randomColor = RandomColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: collectionReference.snapshots(),
        // ignore: missing_return
        builder: (context, snapshot) {
          if (snapshot.hasData)
            return PageView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                final document = snapshot.data.docs[index];
                return QuotesWidget(
                  backgroundcolor: _randomColor.randomColor(
                      colorBrightness: ColorBrightness.dark),
                  quote: document['quote'],
                  author: document['author'],
                );
              },
            );
        },
      ),
    );
  }
}
