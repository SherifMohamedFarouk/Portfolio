import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:portfolio/view/main_page/widgets/app_bar.dart';

import '../../shared/global/globalkeys.dart';
import '../../shared/theme/color_palete.dart';
import '../user_info/user_info.dart';
import '../user_projects/user_projects.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenWidth * 0.1, screenHeight * 0.07),
        child: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.2,
              ),
              UserInfo(screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(
                height: screenHeight * 0.4,
              ),
              UserProjects(key:projectsGlobalKey)
            ],
          ),
        ),
      ),
    );
  }
}
