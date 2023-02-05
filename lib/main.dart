import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/shared/shared_preference/sharedpref_helper.dart';
import 'package:portfolio/shared/theme/themes.dart';
import 'package:portfolio/view/main_page/profile_screen.dart';
import 'package:provider/provider.dart';

import 'navigation/custom_navigation.dart';
import 'navigation/routes.dart';
import 'shared/theme/color_palete.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: primaryBrown,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
  ));

  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: ProfileScreen(),
      ),
    );
  }
}
