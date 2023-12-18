import 'package:farmwork_bloc_ver/ui/screen/air_humidity_screen.dart';
import 'package:farmwork_bloc_ver/ui/screen/air_temperature_screen.dart';
import 'package:farmwork_bloc_ver/ui/screen/dashboard_screen.dart';
import 'package:farmwork_bloc_ver/ui/screen/edit_password_screen.dart';
import 'package:farmwork_bloc_ver/ui/screen/edit_profile_screen.dart';
import 'package:farmwork_bloc_ver/ui/screen/login_screen.dart';
import 'package:farmwork_bloc_ver/ui/screen/news_list_screen.dart';
import 'package:farmwork_bloc_ver/ui/screen/news_detail_screen.dart';
import 'package:farmwork_bloc_ver/ui/screen/profile_screen.dart';
import 'package:farmwork_bloc_ver/ui/screen/soil_moisture_screen.dart';
import 'package:farmwork_bloc_ver/ui/screen/soil_ph_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FarmWork Mobile',
      theme: ThemeData(
        useMaterial3: false,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/dashboardScreen': (context) => const DashboardScreen(),
        '/profileScreen': (context) => const ProfileScreen(),
        '/editProfileScreen': (context) => const EditProfileScreen(),
        '/editPasswordScreen': (context) => const EditPasswordScreen(),
        '/newsListScreen': (context) => const NewsListScreen(),
        '/newsDetailScreen': (context) => const NewsDetailScreen(),
        '/airTemperatureScreen': (context) => const AirTemperatureScreen(),
        '/airHumidityScreen': (context) => const AirHumidityScreen(),
        '/soilMoistureScreen': (context) => const SoilMoistureScreen(),
        '/soilPhScreen': (context) => const SoilPhScreen(),
      },
      // home: DashboardScreen(),
    );
  }
}
