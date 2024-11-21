import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/widgets/users_data.dart';

import 'package:flutter/material.dart';

class RecentFilesStat extends StatelessWidget {
  const RecentFilesStat({
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Talabalar",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              // minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("FISH"),
                ),
                DataColumn(
                  label: Text("Davomat"),
                ),
                DataColumn(
                  label: Text("Oraliq"),
                ),
                DataColumn(
                  label: Text("Yakuniy"),
                ),
              ],
              rows: List.generate(
                demoRecentFilesuser.length,
                (index) => recentFileDataRow(demoRecentFilesuser[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFileUser fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            CircleAvatar(
              backgroundImage: Image.network(
                fileInfo.icon!,
              ).image,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!,overflow: TextOverflow.ellipsis,)),
      DataCell(Text(fileInfo.oraliq!)),
      DataCell(Text(fileInfo.yakuniy!)),
    ],
  );
}
