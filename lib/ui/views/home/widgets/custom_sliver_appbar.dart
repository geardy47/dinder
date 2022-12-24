import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../application/app/theme/text_styles.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      key: const Key('homeAppBar'),
      expandedHeight: 320.h,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Dinder',
          textScaleFactor: 1,
          style: tsHeader,
        ),
        stretchModes: const [
          StretchMode.fadeTitle,
        ],
        background: Padding(
          padding: EdgeInsets.fromLTRB(0, 64.h, 0, 56.h),
          child: SvgPicture.asset(
            'assets/images/background.svg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
