// import 'package:admin/responsive.dart';
// import 'package:flutter/material.dart';

// class RecruitmentDataWidget extends StatefulWidget {
//   @override
//   _RecruitmentDataWidgetState createState() => _RecruitmentDataWidgetState();
// }

// class _RecruitmentDataWidgetState extends State<RecruitmentDataWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           color: Colors.white, borderRadius: BorderRadius.circular(20)),
//       padding: EdgeInsets.all(20),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Recruitment Progress",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontSize: 22,
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.yellow,
//                     borderRadius: BorderRadius.circular(100)),
//                 padding: EdgeInsets.symmetric(
//                   vertical: 10,
//                   horizontal: 20,
//                 ),
//                 child: Text(
//                   "View All",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.black),
//                 ),
//               )
//             ],
//           ),
//           Divider(
//             thickness: 0.5,
//             color: Colors.grey,
//           ),
//           Table(
//             defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//             children: [
//               /// Table Header
//               TableRow(
//                 decoration: BoxDecoration(
//                   border: Border(
//                       bottom: BorderSide(
//                     color: Colors.grey,
//                     width: 0.5,
//                   )),
//                 ),
//                 children: [
//                   tableHeader("Full Name"),
//                   if (!Responsive.isMobile(context)) tableHeader("Designation"),
//                   tableHeader("Status"),
//                   if (!Responsive.isMobile(context)) tableHeader(""),
//                 ],
//               ),

//               /// Table Data
//               tableRow(
//                 context,
//                 name: "Mary G Lolus",
//                 color: Colors.blue,
//                 image: "assets/images/user1.jpg",
//                 designation: "Project Manager",
//                 status: "Practical Round",
//               ),
//               tableRow(
//                 context,
//                 name: "Vince Jacob",
//                 color: Colors.blue,
//                 image: "assets/user2.jpg",
//                 designation: "UI/UX Designer",
//                 status: "Practical Round",
//               ),
//               tableRow(
//                 context,
//                 name: "Nell Brian",
//                 color: Colors.green,
//                 image: "assets/user3.jpg",
//                 designation: "React Developer",
//                 status: "Final Round",
//               ),
//               tableRow(
//                 context,
//                 name: "Vince Jacob",
//                 color: Colors.yellow,
//                 image: "assets/user2.jpg",
//                 designation: "UI/UX Designer",
//                 status: "HR Round",
//               ),
//             ],
//           ),
//           Container(
//             margin: EdgeInsets.symmetric(vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Showing 4 out of 4 Results"),
//                 Text(
//                   "View All",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   TableRow tableRow(context, {name, image, designation, status, color}) {
//     return TableRow(
//         decoration: BoxDecoration(
//           border: Border(
//             bottom: BorderSide(
//               color: Colors.grey,
//               width: 0.5,
//             ),
//           ),
//         ),
//         children: [
//           //Full Name
//           Container(
//             margin: EdgeInsets.symmetric(vertical: 15),
//             child: Row(
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(100),
//                   child: Image.asset(
//                     'assets/images/user1.jpg',
//                     width: 30,
//                     height: 30,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Text(name)
//               ],
//             ),
//           ),
//           // Designation
//           if (!Responsive.isMobile(context)) Text(designation),
//           //Status
//           Row(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: color,
//                 ),
//                 height: 10,
//                 width: 10,
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Text(status),
//             ],
//           ),
//           // Menu icon
//           if (!Responsive.isMobile(context))
//             Icon(
//               Icons.more_horiz,
//               color: Colors.black,
//               size: 50,
//             )
//         ]);
//   }

//   Widget tableHeader(text) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 15),
//       child: Text(
//         text,
//         style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
//       ),
//     );
//   }
// }
