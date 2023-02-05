import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../theme/color_palete.dart';


class ShowSnackBar{

  static showSnackBar(BuildContext context, String text, width) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.fromLTRB(14.0, 18.0, 14.0, 18.0),
      // margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
      backgroundColor: primaryBrown,
      content: Row(
        children: [
          const Icon(FeatherIcons.alertCircle, color: Colors.white, size: 22.0),
          SizedBox(
            width: width / 22.785,
          ),
          SizedBox(
            width: width * 0.6,
            child: Text(text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
            child: const Icon(Icons.close, color: Colors.white, size: 22.0),
          ),
        ],
      ),
    ));
  }
}
