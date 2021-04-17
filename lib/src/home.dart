/*
Haute Couture by Alexander Abraham, The Black Unicorn.
Licensed under the MIT license.
*/

import 'data.dart';
import 'error.dart';
import 'brand.dart';
import 'loading.dart';
import 'constants.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  final APIStorage designerStorage;
  Home({Key key,
    @required this.designerStorage
  }) : super(key: key);
  @override
  HomeState createState() => HomeState();
}
class HomeState extends State<Home> {
  Future<Map<String,dynamic>> fashionHouses;
  PageController pageController = PageController(initialPage:0);
  void initState(){
    super.initState();
    fashionHouses = widget.designerStorage.readData();
  }
  @override
  Widget build(BuildContext context){
    return FutureBuilder<Map<String, dynamic>>(
      future: fashionHouses,
      builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return Loading();
        }
        else {
          if (snapshot.hasError) {
            return Error();
          }
          else {
            Map<String, dynamic> brands = snapshot.data;
            List<Widget> screens = [];
            for (int i = 0; i < brands.length; i++){
              String designer = brands.keys.elementAt(i);
              String houseImage = brands[designer][0];
              String houseWebsite = brands[designer][2];
              String designerDescription = brands[designer][1];
              screens.add(
                FashionHouse(
                  fashionDesigner: designer,
                  fashionDesignerLogo: houseImage,
                  fashionDesignerWebsiteUrl: houseWebsite,
                  fashionDesignerDescription: designerDescription
                )
              );
            }
            return PageView(
              controller: pageController,
              children: screens
            );
          }
        }
      }
    );
  }
}
