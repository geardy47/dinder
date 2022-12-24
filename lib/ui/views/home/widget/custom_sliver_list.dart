import 'package:dinder/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../../application/app/constants/custom_color.dart';
import '../../../../application/app/theme/text_styles.dart';

class CustomSliverList extends HookViewModelWidget<HomeViewModel> {
  const CustomSliverList({
    Key? key,
  }) : super(key: key);

  @override
  Widget buildViewModelWidget(BuildContext context, HomeViewModel viewModel) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 8.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                color: CustomColor.accentColor,
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.pets,
                    color: CustomColor.primaryColor,
                  ),
                  SizedBox(width: 16.w),
                  Text(
                    'Puddle',
                    style: tsBody,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.chevron_right,
                    color: CustomColor.primaryColor,
                  ),
                ],
              ),
            ),
          );
        },
        childCount: 30,
      ),
    );
  }
}
