import 'package:farmwork_bloc_ver/ui/widget/log_date_widget.dart';
import 'package:farmwork_bloc_ver/utils/colors.dart';
import 'package:farmwork_bloc_ver/utils/font_type.dart';
import 'package:flutter/material.dart';

class SoilMoistureScreen extends StatelessWidget {
  const SoilMoistureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Soil Moisture',
          style: titleMedium,
        ),
        backgroundColor: mainPrimary,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 16.0,
            ),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return LogDateWidget();
            },
          ),
        ),
      ),
    );
  }
}
