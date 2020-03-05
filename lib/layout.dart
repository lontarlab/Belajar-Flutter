import 'package:flutter/material.dart';

class SizeConfig{
    static MediaQueryData _mediaQueryData;
    static double screenWidth;
    static double screenHeight;
    static double BlockHorizontal;
    static double BlockVertical;

    void init (BuildContext context)
    {
      _mediaQueryData = MediaQuery.of(context);
      screenWidth = _mediaQueryData.size.width;
      screenHeight = _mediaQueryData.size.height;
      BlockHorizontal = screenWidth / 100;
      BlockVertical = screenHeight / 100;
    }
}