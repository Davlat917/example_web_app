import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeaderGrup extends StatelessWidget {
  const HeaderGrup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuController = context.read<MenuAppController>();

    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: menuController.controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Guruhlar",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        Expanded(child: SearchField()),
        ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.height * 0.1),
            child: Image.asset(
              "assets/images/user1.jpg",
              height: 38,
            ),
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text("Mamatova Muhayyo"),
            ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class SearchField extends StatelessWidget {
  SearchField({
    Key? key,
  }) : super(key: key);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ctr = context.read<MenuAppController>();

    return TextField(
      controller: controller,
      onChanged: (value) {
        ctr.search(controller.text);
      },
      decoration: InputDecoration(
        hintText: "FISH",
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 6),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
