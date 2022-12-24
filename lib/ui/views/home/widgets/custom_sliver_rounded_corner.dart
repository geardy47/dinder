import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/app/constants/custom_color.dart';

class CustomSliverRoundedCorner extends StatelessWidget {
  const CustomSliverRoundedCorner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: CustomColor.primaryColor,
        height: 16.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 16.h,
              decoration: BoxDecoration(
                color: CustomColor.textColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
