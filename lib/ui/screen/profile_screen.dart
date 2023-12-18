import 'package:farmwork_bloc_ver/ui/widget/button_profile_widget.dart';
import 'package:farmwork_bloc_ver/ui/widget/profile_text_widget.dart';
import 'package:farmwork_bloc_ver/utils/colors.dart';
import 'package:farmwork_bloc_ver/utils/font_type.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: titleMedium,
        ),
        backgroundColor: mainPrimary,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 195,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: lightPrimary,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/logo_farmwork.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Text(
                      'Nama Pengguna',
                      style: titleLarge.copyWith(color: whiteFarmWork),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: lightPrimary,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileTextWidget(
                      title: 'Email',
                      body: 'namaemail@email.com',
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    ProfileTextWidget(
                      title: 'Alamat',
                      body: 'Jalan Test 123, Nama Kecamatan, Kota',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              ButtonProfileWidget(
                onPressed: () {
                  Navigator.pushNamed(context, '/editPasswordScreen');
                },
                title: 'Ubah Password',
                color: darkPrimary,
              ),
              const SizedBox(
                height: 16.0,
              ),
              ButtonProfileWidget(
                onPressed: () {
                  Navigator.pushNamed(context, '/editProfileScreen');
                },
                title: 'Ubah Profile',
                color: darkPrimary,
              ),
              const SizedBox(
                height: 16.0,
              ),
              ButtonProfileWidget(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                title: 'Keluar',
                color: mainError,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
