import 'package:admin/responsive.dart';
import 'package:admin/screens/profile/widgets/detail.dart';
import 'package:admin/screens/profile/widgets/userd.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiless(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: UserDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
