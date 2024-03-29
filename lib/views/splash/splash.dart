import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mvvm/views/resources/routes_manager.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

    Timer? _timer;
    

    _startDelay(){

      _timer = Timer(const Duration(seconds: 0), _goNext);
    }

    _goNext(){
      Navigator.pushReplacementNamed(context, Routes.onBoaringRoute);
    }
    

    @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorManager.primary,
      body:
          const Center(
            child: Image(
              image: AssetImage(ImageAssets.splashLogo)
              )),

    );
  }
}