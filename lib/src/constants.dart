/*
Haute Couture by Alexander Abraham, The Black Unicorn.
Licensed under the MIT license.
*/

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// General variables.
Dio dio = new Dio();
String appTitle = 'Haute Couture';
Color mainColor = Color(0xFF000000);
Color accentColor = Color(0xFFFFFFFF);
String headingFont = 'CormorantBold';
String defaultFont = 'CormorantRegular';
String apiUrl = 'https://blckunicorn.art/assets/hautecouture/api/designers.json';

/// Loading screen variables.
String loadingMessage = 'Loading...';
double defaultFontSize = 25;
double animationPushDown = 250;
double animationSize = 150;

/// Error screen variables.
String errorMessageTitle = 'Error!';
String errorMessage = 'Error!\nTry again later!';


/// Fashion house screen variables.
String visitWebsite = 'Visit website!';
double coverImageSize = 250;
double alignmentVectorOne = 0.2;
double alignmentVectorTwo = 0.8;
double defaultPadding = 20;
double defaultRounding = 25;
double boxSpacing = 50;
