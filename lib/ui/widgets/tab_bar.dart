import 'package:flutter/material.dart';
import 'package:trading_app_terentev/ui/shared/configs/theme_config.dart';

import '../screens/trade_pair/chart_screen/charts_screen.dart';
import '../screens/trade_pair/trade_screen.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfig.blacDark,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarGeneralScreen(tabController: tabController),
          ),
        ),
      ),
    );
  }
}

class TabBarGeneralScreen extends StatelessWidget {
  const TabBarGeneralScreen({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: AppConfig.blacDark,
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              SizedBox(
                height: 30,
                child: TabBar(
                  unselectedLabelColor: AppConfig.disactiveText,
                  labelColor: AppConfig.activeText,
                  indicator: BoxDecoration(
                    color: AppConfig.blackLight,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelStyle: const TextStyle(
                    fontSize: AppConfig.fontSize14,
                  ),
                  controller: tabController,
                  tabs: const [
                    Tab(
                      text: 'Charts',
                    ),
                    Tab(
                      text: 'Trade',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [
              Tab1(),
              Tab2(),
            ],
          ),
        )
      ],
    );
  }
}
