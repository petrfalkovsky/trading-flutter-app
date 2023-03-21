import 'package:flutter/material.dart';
import 'package:trading_app_terentev/ui/shared/configs/theme_config.dart';
import 'package:trading_app_terentev/ui/shared/ext.dart';

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.h,
        Row(children: [
          Expanded(
            flex: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icons/burger.png',
                  width: 15,
                  height: 9,
                ),
                10.w,
                const Text(
                  style: TextStyle(fontSize: 20, color: AppConfig.activeText),
                  "BTC/USDT",
                ),
                10.w,
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppConfig.greenTextOpacity),
                    elevation: MaterialStateProperty.all<double>(0),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    style: TextStyle(
                        fontSize: AppConfig.fontSize14,
                        color: AppConfig.greenText),
                    "+2.38%",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/icons/chart-icon.png',
                  width: 10,
                  height: 15,
                ),
                16.w,
                const Icon(Icons.more_horiz, color: AppConfig.disactiveText),
              ],
            ),
          )
        ]),
        14.h,
        Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Text(
                    style: TextStyle(
                        fontSize: AppConfig.fontSize14,
                        color: AppConfig.greenText),
                    "Левая колонка",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text(
                      'Column 2 Column 2 Column 2 Column 2 Column 2 Column 2 Column 2 Column 2 Column 2 Column 2 Column 2 Column 2 Column 2 '),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
