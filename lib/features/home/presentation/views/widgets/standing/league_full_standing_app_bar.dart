import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/utils/icons/icon_broken.dart';

class LeagueFullStandingAppBar extends StatelessWidget {
  const LeagueFullStandingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon:  Icon(
            IconBroken.Arrow___Left_2,
            size: 32.r,
            color: TAppColors.kGrey1,
          ),
        ),
      ],
    );
  }
}
