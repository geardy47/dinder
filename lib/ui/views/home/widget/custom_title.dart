import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/app/constants/custom_color.dart';
import '../../../../application/app/theme/text_styles.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        color: CustomColor.textColor,
        child: Text(
          'Choose your breed',
          style: tsTitle,
        ),
      ),
    );
  }
}
