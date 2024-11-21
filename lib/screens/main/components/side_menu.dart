import 'package:admin/controllers/MenuAppController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctr = context.read<MenuAppController>();
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/icons/logo.png"),
          ),
          Card(
            color: ctr.selectedMenuIndex == 0 ? Colors.indigo : null,
            child: DrawerListTile(
              title: "Statistics",
              svgSrc: "assets/icons/menu_dashboard.svg",
              press: () {
                context
                    .read<MenuAppController>()
                    .updateMenuIndex(0); // Dashboard
              },
            ),
          ),
          Card(
            color: ctr.selectedMenuIndex == 1 ? Colors.indigo : null,
            child: DrawerListTile(
              title: "Grups",
              svgSrc: "assets/icons/menu_tran.svg",
              press: () {
                context.read<MenuAppController>().updateMenuIndex(1); // Task
              },
            ),
          ),
          Card(
            color: ctr.selectedMenuIndex == 2 ? Colors.indigo : null,
            child: DrawerListTile(
              title: "Imtihonlar",
              svgSrc: "assets/icons/menu_task.svg",
              press: () {
                context.read<MenuAppController>().updateMenuIndex(2); // Task
              },
            ),
          ),
          Card(
            color: ctr.selectedMenuIndex == 3 ? Colors.indigo : null,
            child: DrawerListTile(
              title: "Fanlar",
              svgSrc: "assets/icons/menu_doc.svg",
              press: () {
                context.read<MenuAppController>().updateMenuIndex(3); // Task
              },
            ),
          ),
          Card(
            color: ctr.selectedMenuIndex == 4 ? Colors.indigo : null,
            child: DrawerListTile(
              title: "Hujjatlar",
              svgSrc: "assets/icons/menu_store.svg",
              press: () {
                context.read<MenuAppController>().updateMenuIndex(4); // Task
              },
            ),
          ),
          Card(
            color: ctr.selectedMenuIndex == 5 ? Colors.indigo : null,
            child: DrawerListTile(
              title: "Profile",
              svgSrc: "assets/icons/menu_profile.svg",
              press: () {
                context.read<MenuAppController>().updateMenuIndex(5); // Task
              },
            ),
          ),
          Card(
            color: ctr.selectedMenuIndex == 6 ? Colors.indigo : null,
            child: DrawerListTile(
              title: "Settings",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {
                context.read<MenuAppController>().updateMenuIndex(6); // Task
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
