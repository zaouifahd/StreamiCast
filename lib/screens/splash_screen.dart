import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_web/provider/theme_provider.dart';

import '../colors.dart';
import '../constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.zero,
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        color: splashBackgroundColor,
        child: Center(
          child: ClipRRect(
            borderRadius: ThemeGuide.borderRadius,
            child: Image.asset(
              kAppIconPath,
              width: 200,
              height: 200,
            ),
          ),
        ));
  }
}
