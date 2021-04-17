/*
Haute Couture by Alexander Abraham, The Black Unicorn.
Licensed under the MIT license.
*/

import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FashionHouse extends StatefulWidget{
  final String fashionDesigner;
  final String fashionDesignerLogo;
  final String fashionDesignerWebsiteUrl;
  final String fashionDesignerDescription;
  FashionHouse({Key key,
    @required this.fashionDesigner,
    @required this.fashionDesignerLogo,
    @required this.fashionDesignerWebsiteUrl,
    @required this.fashionDesignerDescription
  }) : super(key: key);
  @override
  FashionHouseState createState() => FashionHouseState();
}
class FashionHouseState extends State<FashionHouse>{
  String url;
  String logo;
  String designer;
  String description;
  @override
  void initState(){
    super.initState();
    url = widget.fashionDesignerWebsiteUrl;
    logo = widget.fashionDesignerLogo;
    designer = widget.fashionDesigner;
    description = widget.fashionDesignerDescription;
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: accentColor,
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text(
              '$designer',
              style: TextStyle(
                color: mainColor,
                fontWeight: FontWeight.bold,
                fontSize: defaultFontSize,
                fontFamily: headingFont
              ),
            ),
          ]
        )
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget> [
            new Stack(
              children: <Widget>[
                new Image.network(
                  '$logo',
                  height: coverImageSize,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                new Positioned(
                  bottom: alignmentVectorOne,
                  left: alignmentVectorOne,
                  child: Align(
                    alignment: Alignment(-alignmentVectorTwo, alignmentVectorTwo),
                    child: Padding(
                      padding: EdgeInsets.all(defaultPadding),
                      child: Text(
                        '$designer',
                        style: TextStyle(
                          color: accentColor,
                          fontWeight: FontWeight.bold,
                          fontSize: defaultFontSize,
                          fontFamily: defaultFont
                        ),
                      )
                    )
                  )
                )
              ]
            ),

            new Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: new Card(
                color: accentColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRounding)
                ),
                child: new Column(
                  children:<Widget> [
                    new Padding(
                      padding: EdgeInsets.all(defaultPadding),
                      child: new Text(
                        '$description',
                        style: TextStyle(
                          color: mainColor,
                          fontSize: defaultFontSize,
                          fontFamily: defaultFont
                        ),
                      )
                    ),
                    new SizedBox(
                      height:boxSpacing
                    ),
                    new RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRounding)
                      ),
                      color: mainColor,
                      padding: EdgeInsets.all(defaultPadding),
                      child: new Text(
                        '$visitWebsite',
                        style: TextStyle(
                          color: accentColor,
                          fontSize: defaultFontSize,
                          fontFamily: defaultFont
                        )
                      ),
                      onPressed: () async {
                        try{
                          await launch(url);
                        } catch (e) {}
                      }
                    ),
                    new SizedBox(
                      height:boxSpacing
                    ),
                  ]
                )
              )
            ),
          ]
        )
      )
    );
  }
}
