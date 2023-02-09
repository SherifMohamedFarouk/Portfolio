import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/shared/theme/color_palete.dart';

import '../../shared/responsive/responsive.dart';
import 'list_of_projects.dart';

class UserProjects extends StatefulWidget {
  const UserProjects({super.key});

  @override
  State<UserProjects> createState() => _UserProjectsState();
}

class _UserProjectsState extends State<UserProjects> {

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("PROJECTS",
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontWeight: FontWeight.w600,
                letterSpacing:3.0,
                fontSize: Responsive.isMobile(context)?25:screenWidth * 0.024,
            )),
        const SizedBox(
          height: 20,
        ),
        Text(
            "Here are some of the personal and company's projects i worked on, with pictures and description  ",
            style: Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight: FontWeight.w200,
                fontSize: Responsive.isMobile(context)?20:screenWidth * 0.012,
            )),
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(projectList[index].images![0]),
                     SizedBox(
                      width: screenWidth * 0.10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(projectList[index].title!,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    fontWeight: FontWeight.w900,
                                fontSize: Responsive.isMobile(context)?20:screenWidth * 0.02,
                                    )),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          width: screenWidth*0.25,
                          child: Text(
                              projectList[index].description!,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      fontWeight: FontWeight.w200,
                                  fontSize: Responsive.isMobile(context)?16:screenWidth * 0.010,
                              )),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20),
                            elevation: 0,
                            shadowColor: Colors.black12,
                            disabledForegroundColor: primaryBrown.withOpacity(0.38),
                            disabledBackgroundColor: primaryBrown.withOpacity(0.38),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            backgroundColor: secondaryLightBrown,
                          ),
                          child: Text(
                            'See more',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: () {} == null ? primaryGray : Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
            );
          },
          itemCount: projectList.length,
        )
      ],
    );
  }
}
