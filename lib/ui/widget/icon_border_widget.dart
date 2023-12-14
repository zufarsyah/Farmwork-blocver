import 'package:farmwork_bloc_ver/utils/colors.dart';
import 'package:flutter/material.dart';

class IconsBorderWidget extends StatelessWidget {
  const IconsBorderWidget({
    Key? key,
    required this.iconsData,
  }) : super(key: key);
  final IconData? iconsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(shape: BoxShape.circle, color: whiteFarmWork),
      child: Icon(
        iconsData,
      ),
    );
  }
}
