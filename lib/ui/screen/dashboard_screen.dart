import 'package:farmwork_bloc_ver/ui/widget/icon_border_tools_widget.dart';
import 'package:farmwork_bloc_ver/ui/widget/icon_border_widget.dart';
import 'package:farmwork_bloc_ver/ui/widget/monitoring_widget.dart';
import 'package:farmwork_bloc_ver/ui/widget/news_card_widget.dart';
import 'package:farmwork_bloc_ver/utils/colors.dart';
import 'package:farmwork_bloc_ver/utils/font_type.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Halo,",
                        style: titleLarge,
                      ),
                      Text(
                        "FarmWork User",
                        style: titleLarge,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const IconsBorderWidget(
                          iconsData: Icons.notifications_none_rounded),
                      const SizedBox(
                        width: 8.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/logo_farmwork.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Flexible(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  height: 195,
                  decoration: BoxDecoration(
                    color: lightPrimary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MonitoringWidget(
                            nameMonitoring: 'Air Temperature',
                            unit: 'C',
                            value: '20',
                            iconsData: Icons.thermostat_auto_rounded,
                          ),
                          MonitoringWidget(
                            nameMonitoring: 'Air Humidity',
                            unit: '%',
                            value: '20',
                            iconsData: Icons.storm_rounded,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MonitoringWidget(
                            nameMonitoring: 'Soil Moisture',
                            unit: 'RH',
                            value: '20',
                            iconsData: Icons.water_drop_rounded,
                          ),
                          MonitoringWidget(
                            nameMonitoring: 'Soil pH',
                            unit: 'pH',
                            value: '20',
                            iconsData: Icons.landslide_rounded,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Tools",
                  style: titleMedium,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Flexible(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  height: 185,
                  decoration: BoxDecoration(
                    color: lightPrimary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconsBorderToolsWidget(
                            text: 'Lahan',
                            iconsData: Icons.waves_rounded,
                          ),
                          IconsBorderToolsWidget(
                              text: "Irigasi", iconsData: Icons.whatshot),
                          IconsBorderToolsWidget(
                              text: "Pemupukan",
                              iconsData: Icons.energy_savings_leaf_outlined),
                          IconsBorderToolsWidget(
                              text: "Pembibitan",
                              iconsData: Icons.grass_outlined)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconsBorderToolsWidget(
                            text: 'Perkiraan\nPanen',
                            iconsData: Icons.compost_rounded,
                          ),
                          IconsBorderToolsWidget(
                              text: "Marketplace",
                              iconsData: Icons.shopping_bag),
                          IconsBorderToolsWidget(
                              text: "Log Data",
                              iconsData: Icons.pending_actions_outlined),
                          IconsBorderToolsWidget(
                              text: "More",
                              iconsData: Icons.more_horiz_outlined)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Berita",
                    style: titleMedium,
                  ),
                  const Icon(
                    Icons.chevron_right_outlined,
                    weight: 24,
                  )
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Flexible(
                flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
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
            ],
          ),
        ),
      ),
    );
  }
}
