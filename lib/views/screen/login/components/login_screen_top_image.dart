import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import '../../../../res/mediaQuery.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Lottie.asset('assets/json/VitwoAI Login.json',
              fit: BoxFit.cover,
              height: SizeVariables.getHeight(context) * 0.4),
        ),
      ],
    );
  }
}
