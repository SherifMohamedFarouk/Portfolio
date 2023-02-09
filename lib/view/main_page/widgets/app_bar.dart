import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../shared/theme/color_palete.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);
  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return AppBar(
      shadowColor: Colors.white60,
      elevation: 3,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leadingWidth: screenWidth * 0.1,
      leading: InkWell(
          onTap: () {},
          child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.005,
                  vertical: screenHeight * 0.008),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  SizedBox(
                    width: screenWidth * 0.01,
                  ),
                  Center(
                      child: Text(
                    'Ehab Nasser',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: const Color(0xff000000),
                        ),
                  )),
                ],
              ))),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Text(
                'Home',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.035,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'About',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.035,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Projects',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.035,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Contact',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.035,
            ),
          ],
        )
      ],
    );
  }
}
