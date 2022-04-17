import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/presentation/helper/size_config.dart';
import 'package:weather_app/presentation/resources/assets_manger.dart';
import 'package:weather_app/presentation/resources/color_manager.dart';
import 'package:weather_app/presentation/resources/font_manager.dart';
import 'package:weather_app/presentation/widgets/app_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                width: SizeConfig.bodyHeight * 0.5,
                height: SizeConfig.bodyHeight * 0.5,
                child: Lottie.asset(AssetsManger.Logo)),
          ),
        /*  AppText(
            text: 'Weather App',
            isTitle: true,
            color: ColorManager.primary,
            fontWeight: FontWeightManager.semiBold,
            textSize: 30,
          )*/
        ],
      ),
    );
  }
}
