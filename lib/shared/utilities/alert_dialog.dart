import 'package:flutter/material.dart';

import '../theme/color_palete.dart';

showAlertDialog(BuildContext context, confirm, cancel, dialog, title,
    cancelAction, confrimAction) {
  // set up the buttons
  // Widget cancelButton = TextButton(
  //   child: Text(cancel),
  //   onPressed: cancelAction,
  // );
  // Widget continueButton = TextButton(
  //   child: Text(confirm),
  //   onPressed: confrimAction,
  // );

  Widget cancelButton = CancelButton(title: cancel, onPressed: cancelAction);
  Widget continueButton =
      ConfirmButton(title: confirm, onPressed: confrimAction);

  // set up the AlertDialog

  showDialog(
    context: context,
    builder: (BuildContext context) {
      var screenWidth = MediaQuery.of(context).size.width;
      var screenHeight = MediaQuery.of(context).size.height;
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        actionsAlignment: MainAxisAlignment.spaceAround,
        actionsPadding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.024, horizontal: screenWidth * 0.015),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: primaryBrown,
              ),
        ),
        content: Text(
          dialog,
          maxLines: 3,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: primaryBrown.withOpacity(0.75),
              height: screenHeight * 0.0018),
        ),
        actions: [cancelButton, continueButton],
      );
    },
  );
}

class CancelButton extends StatelessWidget {
  const CancelButton({super.key, this.onPressed, this.title});
  final VoidCallback? onPressed;
  final String? title;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.063,
      width: screenWidth * 0.37,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: primaryBrown),
            borderRadius: BorderRadius.circular(10)),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shadowColor: Colors.black12,
            // disabledForegroundColor: primaryBrown.withOpacity(0.38),
            // disabledBackgroundColor: primaryBrown.withOpacity(0.38),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(8),
            // ),
            // backgroundColor: Colors.white,
          ),
          child: Text(
            title!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: onPressed == null ? primaryGray : primaryBrown,
                ),
          ),
        ),
      ),
    );
    ;
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key, this.onPressed, this.title});
  final VoidCallback? onPressed;
  final String? title;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.063,
      width: screenWidth * 0.37,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.black12,
          disabledForegroundColor: primaryBrown.withOpacity(0.38),
          disabledBackgroundColor: primaryBrown.withOpacity(0.38),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: primaryBrown,
        ),
        child: Text(
          title!,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: onPressed == null ? primaryGray : Colors.white,
              ),
        ),
      ),
    );
    ;
  }
}
