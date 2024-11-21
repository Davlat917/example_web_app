import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

//
List demoMyFilesshuj = [
  CloudStorageInfo(
    title: "Tarix",
    numOfFiles: 40,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "38",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Axborot",
    numOfFiles: 49,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "60",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Iqtisodiyot",
    numOfFiles: 28,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "50",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Jurnalistic",
    numOfFiles: 79,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "48",
    color: Color(0xFF007EE5),
    percentage: 100,
  ),
  CloudStorageInfo(
    title: "Tarix",
    numOfFiles: 40,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "38",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Axborot",
    numOfFiles: 49,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "60",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Iqtisodiyot",
    numOfFiles: 28,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "50",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Jurnalistic",
    numOfFiles: 79,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "48",
    color: Color(0xFF007EE5),
    percentage: 100,
  ),
  CloudStorageInfo(
    title: "Tarix",
    numOfFiles: 40,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "38",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Axborot",
    numOfFiles: 49,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "60",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Iqtisodiyot",
    numOfFiles: 28,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "50",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Jurnalistic",
    numOfFiles: 79,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "48",
    color: Color(0xFF007EE5),
    percentage: 100,
  ),
];
