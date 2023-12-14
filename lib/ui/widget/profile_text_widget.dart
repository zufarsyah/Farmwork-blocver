import 'package:farmwork_bloc_ver/utils/colors.dart';
import 'package:farmwork_bloc_ver/utils/font_type.dart';
import 'package:flutter/material.dart';

class ProfileTextWidget extends StatelessWidget {
  const ProfileTextWidget({
    super.key,
    required this.title,
    required this.body,
  });
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleSmall.copyWith(color: whiteFarmWork),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          body,
          style: bodySmall.copyWith(color: whiteFarmWork),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
