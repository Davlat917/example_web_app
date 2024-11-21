import 'package:admin/screens/fanlar/fanlar_page.dart';
import 'package:admin/screens/hujjatlar/hujjatlar.dart';
import 'package:admin/screens/imtihonlar/imtihonlar_page.dart';
import 'package:admin/screens/profile/profile.dart';
import 'package:admin/screens/settings/settings_page.dart';
import 'package:admin/screens/grups/student_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menuController = context.watch<MenuAppController>();

    final pages = [
      DashboardScreen(),
      StudentPage(),
      Imtihonlar(), // Yangi sahifa
      FanlarPage(), // Yangi sahifa
      HujjatlarPage(), // Yangi sahifa
      ProfilePage(), // Yangi sahifa
      SettingsDetails(), // Yangi sahifa
    ];

    return Scaffold(
      key: menuController.scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: pages[menuController.selectedMenuIndex], // Dinamik sahifa
            ),
          ],
        ),
      ),
    );
  }
}

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Task Screen",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
