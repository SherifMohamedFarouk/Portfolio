// import 'dart:developer';
//
// import 'package:flutter/material.dart';
//
//
// import '../../view/screens/auth_view/signin_view.dart';
//
// class RefreshToken{
//   static getRefreshToken(BuildContext context) async {
//     if (DateTime.parse(SharedPref.getData(key: Constants.expireTimeKey))
//         .isBefore(DateTime.now())) {
//       try {
//         await AuthServices().refreshToken();
//         log("refresh token is done from global ");
//       } catch (error) {
//         await Logout.logout(context);
//         rethrow;
//       }
//     }
//   }
//
//  static Future<void> getAllUserData(context) async {
//     final getAllUserData = Provider.of<AuthViewModel>(context, listen: false);
//     try {
//       await getAllUserData.getProfileData();
//     } catch (e) {
//       rethrow;
//     }
//   }
// }