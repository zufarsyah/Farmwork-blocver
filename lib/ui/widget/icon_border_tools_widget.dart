import 'package:farmwork_bloc_ver/ui/widget/icon_border_widget.dart';
import 'package:farmwork_bloc_ver/utils/colors.dart';
import 'package:farmwork_bloc_ver/utils/font_type.dart';
import 'package:flutter/material.dart';

class IconsBorderToolsWidget extends StatelessWidget {
  const IconsBorderToolsWidget({
    super.key,
    required this.text,
    required this.iconsData,
  });

  final String text;
  final IconData iconsData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconsBorderWidget(iconsData: iconsData),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            text,
            style: bodySmall.copyWith(color: whiteFarmWork),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
