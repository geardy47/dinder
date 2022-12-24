import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../../../application/app/constants/custom_color.dart';
import '../../../application/app/theme/text_styles.dart';
import 'home_viewmodel.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  const HomeView({super.key});

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
          ),
          SliverToBoxAdapter(
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
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              color: CustomColor.textColor,
              child: Text(
                'Choose your breed',
                style: tsTitle,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
          ),
        ],
      ),
    );
  }
}
