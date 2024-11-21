import 'package:admin/controllers/MenuAppController.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuController = context.watch<MenuAppController>();

    final displayList = menuController.searchList.isEmpty
        ? myList
        : menuController.searchList;

    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(label: Text("File Name")),
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("Size")),
              ],
              rows: List.generate(
                displayList.length,
                (index) => recentFileDataRow(displayList[index]["name"]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(String name) {
  return DataRow(
    cells: [
      DataCell(Text(name)),
      DataCell(Text("N/A")), // Replace with real data if available
      DataCell(Text("N/A")), // Replace with real data if available
    ],
  );
}

