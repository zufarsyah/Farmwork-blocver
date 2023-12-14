import 'package:farmwork_bloc_ver/utils/colors.dart';
import 'package:farmwork_bloc_ver/utils/font_type.dart';
import 'package:flutter/material.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    super.key,
    required this.titleNews,
    required this.dateNews,
    required this.pictureLink,
  });

  final String titleNews;
  final String dateNews;
  final String pictureLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: 328,
      height: 160,
      decoration: BoxDecoration(
        color: whiteFarmWork,
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: lightPrimary,
              borderRadius: const BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dateNews,
                  style: bodySmall,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  titleNews,
                  style: titleMedium,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
