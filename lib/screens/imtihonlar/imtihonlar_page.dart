import 'package:admin/constants.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:admin/screens/imtihonlar/data.dart';
import 'package:admin/screens/imtihonlar/widgets/imtihon_heder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Imtihonlar extends StatelessWidget {
  const Imtihonlar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderImtihon(),
        Container(
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                  // minWidth: 600,
                  columns: [
                    DataColumn(
                      label: Text("File Name"),
                    ),
                    DataColumn(
                      label: Text("Imtihon Vaqti"),
                    ),
                    DataColumn(
                      label: Text("Max Ball"),
                    ),
                  ],
                  rows: List.generate(
                    imtihonlarlist.length,
                    (index) => recentFileDataRow(imtihonlarlist[index]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!)),
      DataCell(Text(fileInfo.size!)),
    ],
  );
}
