import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quote/ul/styleguide/theme_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuotesWidget extends StatelessWidget {
  final Color backgroundcolor;
  final String quote, author;

  const QuotesWidget({Key key, this.backgroundcolor, this.quote, this.author})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: Container(
        color: backgroundcolor,
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  FontAwesomeIcons.quoteLeft,
                  size: 30.0,
                  color: Colors.white,
                )),
            Expanded(
              child: Text(
                quote,
                style: ThemeText.headline,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              author,
              style: ThemeText.subtitle,
              textAlign: TextAlign.center,
            )

            ///mainAxisAlignment: MainAxisAlignment.center,
            //children: <Widget>[
            ////Align(
            /////alignment: Alignment.topLeft,
            //child: Icon(
            //FontAwesomeIcons.quoteLeft,
            //size: 30.0,
            //color: Colors.grey,
            ///)),
            ////Expanded(
            //child: Center(
            //child: Text(
            //quote,
            ///style: ThemeText.headline,
            //),
            //)),
            ///Text(
            //// author,
            //// style: ThemeText.subtitle,
            //)
          ],
        ),
      ),
    );
  }
}
