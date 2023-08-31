// import 'package:bank_app/components/screens/login_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
//
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
//
//   static const String id = 'profile_screen';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         flexibleSpace: SafeArea(
//           child: Container(
//             width: 81.03,
//             height: 32.0,
//             margin: const EdgeInsets.only(right: 16.0, top: 16.0, bottom: 16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Image.asset('assets/images/app_icon.png'),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: Container(
//         color: Colors.white,
//         child: Column(
//           children: [
//             Container(
//               color: const Color(0xFFFDF8EC),
//               child: Row(
//                 children: [
//                   Image.asset('assets/images/Union_profile.png'),
//                   Container(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               children: [
//                                 Text('FIRST NAME'),
//                                 Text('JOHN'),
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 Text('OTHER NAMES'),
//                                 Text('JIMOH'),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Column(
//                               children: [
//                                 Text('GENDER'),
//                                 Text('MALE'),
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 Text('TITLE'),
//                                 Text('MR. '),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Column(
//                               children: [
//                                 Text('ID'),
//                                 Text('23399922'),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               color: const Color(0xFFE1E6F0),
//               padding: EdgeInsets.symmetric(
//                 vertical: 8.0,
//                 horizontal: 16.0,
//               ),
//               child: const Row(
//                 children: [
//                   Text(
//                     'Account Settings',
//                     style: TextStyle(
//                       color: Color(0xFF001530),
//                       fontFamily: 'OpenSans',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             GestureDetector(
//               child: Container(
//                 color: Colors.white,
//                 padding: EdgeInsets.symmetric(
//                   vertical: 16.0,
//                   horizontal: 17.52,
//                 ),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         right: 17.52,
//                       ),
//                       child: Icon(
//                         Iconsax.lock_1,
//                         color: Color(0xFF022E64),
//                         size: 20,
//                       ),
//                     ),
//                     Text(
//                       'Change Account Password',
//                       style: TextStyle(
//                         color: Color(0xFF022E64),
//                         fontFamily: 'OpenSans',
//                         fontWeight: FontWeight.w400,
//                         fontSize: 14,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (content) => const LoginScreen()));
//               },
//               child: Container(
//                 color: Colors.white,
//                 padding: EdgeInsets.symmetric(
//                   vertical: 16.0,
//                   horizontal: 17.52,
//                 ),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         right: 17.52,
//                       ),
//                       child: Icon(
//                         Iconsax.logout_1,
//                         color: Color(0xFF022E64),
//                         size: 20,
//                       ),
//                     ),
//                     Text(
//                       'Logout',
//                       style: TextStyle(
//                         color: Color(0xFF022E64),
//                         fontFamily: 'OpenSans',
//                         fontWeight: FontWeight.w400,
//                         fontSize: 14,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(
//                 vertical: 8.0,
//                 horizontal: 16.0,
//               ),
//               color: Color(0xFFE1E6F0),
//               child: Row(
//                 children: [
//                   Text(
//                     'About',
//                     style: TextStyle(
//                         color: Color(0xFF001530),
//                         fontFamily: 'OpenSans',
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.white,
//               padding: EdgeInsets.symmetric(
//                 vertical: 16.0,
//                 horizontal: 17.52,
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     'Terms and Conditions',
//                     style: TextStyle(
//                       color: Color(0xFF022E64),
//                       fontFamily: 'OpenSans',
//                       fontWeight: FontWeight.w400,
//                       fontSize: 14,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.white,
//               padding: EdgeInsets.symmetric(
//                 vertical: 16.0,
//                 horizontal: 17.52,
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     'Privacy Policy',
//                     style: TextStyle(
//                       color: Color(0xFF022E64),
//                       fontFamily: 'OpenSans',
//                       fontWeight: FontWeight.w400,
//                       fontSize: 14,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: 12.0,
//             horizontal: 17.52,
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'App Version',
//                 style: TextStyle(
//                   color: Color(0xFF022E64),
//                   fontFamily: 'OpenSans',
//                   fontSize: 12,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
