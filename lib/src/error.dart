/*
Haute Couture by Alexander Abraham, The Black Unicorn.
Licensed under the MIT license.
*/

import 'constants.dart';
import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: new AppBar(
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text(
              '$errorMessageTitle',
              style: TextStyle(
                color: mainColor,
                fontWeight: FontWeight.bold,
                fontSize: defaultFontSize,
                fontFamily: headingFont
              ),
            ),
          ]
        ),
        backgroundColor: accentColor,
      ),
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          children: <Widget> [
            new SizedBox(
              height: animationPushDown
            ),
            new Icon(
              Icons.warning,
              color: accentColor,
              size: animationSize,
            ),
            new Text(
              '$errorMessage',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: defaultFontSize,
                fontFamily: defaultFont
              ),
            )
          ]
        )
      )
    );
  }
}
