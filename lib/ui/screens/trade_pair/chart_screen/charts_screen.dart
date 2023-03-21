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
        const UpperDescriptionBlock(),
        14.h,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const PriceTextField(),
                  14.h,
                  const AmountTextField(),
                ],
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

class AmountTextField extends StatelessWidget {
  const AmountTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConfig.blackLight,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          SizedBox(
            width: 10,
            child: IconButton(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 0),
              icon: Image.asset(
                'assets/icons/minus-icon.png',
                width: 8,
              ),
              onPressed: () {},
            ),
          ),
          const Expanded(
            child: TextField(
              style: TextStyle(color: AppConfig.activeText),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: AppConfig.disactiveText),
                hintText: 'Amount(BTC)',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 10,
            child: IconButton(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 0),
              icon: Image.asset(
                'assets/icons/plus-icon.png',
                width: 8,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class PriceTextField extends StatelessWidget {
  const PriceTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConfig.blackLight,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          SizedBox(
            width: 10,
            child: IconButton(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 0),
              icon: Image.asset(
                'assets/icons/minus-icon.png',
                width: 8,
              ),
              onPressed: () {},
            ),
          ),
          const Expanded(
            child: TextField(
              style: TextStyle(color: AppConfig.activeText),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: AppConfig.activeText),
                hintText: '43,805.35',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 10,
            child: IconButton(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 0),
              icon: Image.asset(
                'assets/icons/plus-icon.png',
                width: 8,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class UpperDescriptionBlock extends StatelessWidget {
  const UpperDescriptionBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
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
                    fontSize: AppConfig.fontSize14, color: AppConfig.greenText),
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
    ]);
  }
}
