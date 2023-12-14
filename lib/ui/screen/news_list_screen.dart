import 'package:farmwork_bloc_ver/ui/widget/news_card_widget.dart';
import 'package:farmwork_bloc_ver/utils/colors.dart';
import 'package:farmwork_bloc_ver/utils/font_type.dart';
import 'package:flutter/material.dart';

class NewsListScreen extends StatelessWidget {
  const NewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Berita',
          style: titleMedium,
        ),
        backgroundColor: mainPrimary,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return NewsCardWidget(
                titleNews: 'Lorem ipsum dolor sit amet consectetur.',
                dateNews: 'Senin, 12-12-2023',
                pictureLink: 'Sementara',
              );
            },
          ),
        ),
      ),
    );
  }
}
