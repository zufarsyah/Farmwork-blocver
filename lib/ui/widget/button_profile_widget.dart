import 'package:farmwork_bloc_ver/utils/colors.dart';
import 'package:farmwork_bloc_ver/utils/font_type.dart';
import 'package:flutter/material.dart';

class ButtonProfileWidget extends StatelessWidget {
  ButtonProfileWidget({
    super.key,
    required this.onPressed,
    required this.title,
    required this.color,
  });

  GestureTapCallback? onPressed;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: color,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: titleMedium.copyWith(color: whiteFarmWork),
            ),
            Icon(
              Icons.chevron_right_outlined,
              weight: 24,
              color: whiteFarmWork,
            ),
          ],
        ),
      ),
    );
  }
}
