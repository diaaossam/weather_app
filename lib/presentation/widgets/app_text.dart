import 'package:flutter/material.dart';
import 'package:weather_app/presentation/resources/font_manager.dart';

import '../helper/size_config.dart';

class AppText extends StatelessWidget {
  String text;
  Color? color;
  double? textSize;
  FontWeight? fontWeight;
  TextDecoration? textDecoration;
  TextAlign? align;
  bool ? isDarkMode;
  bool ? isTitle;

  AppText({
    required this.text,
    this.color,
    this.textSize,
    this.isTitle = false,
    this.isDarkMode=false,
    this.fontWeight,
    this.textDecoration,
    this.align});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align == null ? null : align,
      style: isDarkMode == true
          ? TextStyle(
        fontFamily: 'Montserrat',
        overflow: TextOverflow.ellipsis,
        decoration: textDecoration == null ? null : textDecoration,
        color: color == null ? Colors.white : color,
        fontSize: setUpFontSize(),
        fontWeight: fontWeight == null ? FontWeightManager.regular : fontWeight,
      )
          : TextStyle(
        fontFamily: 'Montserrat',
        overflow: TextOverflow.ellipsis,
        decoration: textDecoration == null ? null : textDecoration,
        color: color == null ? Colors.black : color,
        fontSize: setUpFontSize(),
        fontWeight: fontWeight == null ? FontWeightManager.regular : fontWeight,
      ),
    );
  }
  double setUpFontSize(){
    if(isTitle==false){
      if(textSize == null){
        return getProportionateScreenHeight(20.0);
      }else{
        return getProportionateScreenHeight(textSize!);
      }
    }else{
      return getProportionateScreenHeight(28.0);
    }

  }
}
