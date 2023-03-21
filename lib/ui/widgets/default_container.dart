import 'package:flutter/material.dart';

import '../shared/configs/theme_config.dart';

class DefaultContainer extends StatefulWidget {
  final Widget? child;
  final double? borderRadius;
  final double? width;
  const DefaultContainer({
    Key? key,
    this.child,
    this.borderRadius,
    this.width,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DefaultContainerState createState() => _DefaultContainerState();
}

class _DefaultContainerState extends State<DefaultContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        color: AppConfig.blacDark,
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 34),
        boxShadow: [
          BoxShadow(
            color: AppConfig.black.withOpacity(0.07),
            blurRadius: 15,
          ),
        ],
      ),
      child: widget.child,
    );
  }
}
