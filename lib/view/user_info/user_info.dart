import 'package:flutter/material.dart';

import '../../shared/theme/color_palete.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: screenHeight * 0.4,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'I\'m Batman,',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 50,
                    color: Colors.black,
                  ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text(
              'A flutter dev',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.black,
                  ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              'a superhero published by DC Comics. Operating in Gotham City, he serves as its protector, using the symbol of a bat to strike fear into the hearts of criminals.',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black,
                  ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
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
                backgroundColor: primaryBrown,
              ),
              child: Text(
                'Download CV',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: () {} == null ? primaryGray : Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
