import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: new AppBar(
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text(
              '$loadingMessage',
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
            new LoadingBouncingGrid.square(
              size: animationSize,
              backgroundColor: accentColor,
            )
          ]
        )
      )
    );
  }
}
