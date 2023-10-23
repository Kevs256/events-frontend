import 'package:flutter/material.dart';

import 'colors.dart';

class CircleAvatarWidget extends StatelessWidget {
  final String assetImage;
  const CircleAvatarWidget({
    super.key,
    this.assetImage = 'assets/icons/profile_icon.png',
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundColor: AppColors.bgColor,
        radius: 55,
        backgroundImage: AssetImage(assetImage),
      ),
    );
  }
}
