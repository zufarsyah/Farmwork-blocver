import 'package:farmwork_bloc_ver/ui/widget/icon_border_widget.dart';
import 'package:farmwork_bloc_ver/utils/colors.dart';
import 'package:farmwork_bloc_ver/utils/font_type.dart';
import 'package:flutter/material.dart';

class MonitoringWidget extends StatelessWidget {
  const MonitoringWidget({
    super.key,
    required this.nameMonitoring,
    required this.value,
    required this.iconsData,
    required this.unit,
  });

  final String nameMonitoring;
  final String value;
  final String unit;
  final IconData iconsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 146,
      height: 76,
      decoration: BoxDecoration(
        color: lightSecondary,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconsBorderWidget(iconsData: iconsData),
              Text(
                '$value $unit',
                style: titleLarge,
              ),
            ],
          ),
          Text(
            nameMonitoring,
            style: bodySmall,
          )
        ],
      ),
    );
  }
}
