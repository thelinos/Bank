// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   static const String id = 'home_screen';
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.only(
//                   top: 8.0, left: 16.0, bottom: 16.0, right: 16.0),
//               // decoration: BoxDecoration(
//               //   color: Colors.green,
//               //   borderRadius: BorderRadius.circular(20.0),
//               // ),
//               child: Row(
//                 children: [
//                   Container(
//                     width: 52.0,
//                     height: 42.0,
//                     color: Colors.white,
//                     child: const Text('img'),
//                   ),
//                   const Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Good morning',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.0,
//                         ),
//                       ),
//                       Text(
//                         'Mr. John Jimoh',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w600,
//                             fontSize: 16.0),
//                       ),
//                     ],
//                   ),
//                   // App Icon to be placed below here
//                 ],
//               ),
//             ),
//             Container(
//               decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: <Color>[Color(0xFFE0AD0F), Color(0xFFA07801)],
//               )),
//               padding: const EdgeInsets.only(
//                   top: 36.45, left: 16.0, right: 16.0, bottom: 37.0),
//               child: const Column(
//                 children: [
//                   Text('Account Balance'),
//                   Text('GHC 10,000.00'),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('Checking Account'),
//                       Text('875431143137098707')
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               color: Color(0xFFE1E6F0),
//               padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Recent Transaction',
//                     style: TextStyle(
//                       color: Color(0xFF001530),
//                       fontWeight: FontWeight.w600,
//                       fontSize: 14.0,
//                     ),
//                   ),
//                   Text(
//                     'See all',
//                     style: TextStyle(
//                         color: Color(0xFF022E64),
//                         fontSize: 12.0,
//                         fontWeight: FontWeight.w400),
//                   )
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Colors.white,
//                 child: Column(
//                   children: [
//                     Container(),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
