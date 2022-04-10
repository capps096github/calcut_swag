import 'package:flutter/cupertino.dart';

import '../swag_exporter.dart';

class CalcutShirtNavBar extends StatelessWidget {
  const CalcutShirtNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: calcutError,
      child: AppButton(
        onTap: () async {
          //set the cureent screen index
          // show Ad
          //  calcutShowInterstitialAd(ref);
          // navigate to the next screen
          //  on the next screen, create a hero widget with the same tag as the cuttoff points circle
          //  context.push(genderPath);
        },
        buttonColor: calcutColor,
        text: "ORDER NOW",
        icon: CupertinoIcons.sparkles,
        textColor: calcutWhite,
      ),
    );
  }
}
