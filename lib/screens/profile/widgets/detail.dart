import 'package:admin/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: defaultPadding),
          Text(
            "Umumiy Natijalar",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          CircleAvatar(
            maxRadius: 60,
            backgroundImage: AssetImage('assets/images/user1.jpg'),
          ),
          SizedBox(height: defaultPadding * 0.1),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Talabalar Kurs Ishi",
            amountOfFiles: "58 %",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Talabalar Media Filelari",
            amountOfFiles: "32 %",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Other Files",
            amountOfFiles: "48 %",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown",
            amountOfFiles: "80 %",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
