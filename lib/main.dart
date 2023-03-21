import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/screens/trade_pair_general.dart';
import 'ui/shared/configs/theme_config.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: AppConfig.blacDark,
      theme: ThemeData(fontFamily: AppConfig.fontFamilyGothic),
      debugShowCheckedModeBanner: false,
      home: const TradePairGeneralScreen(),
    );
  }
}
