import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../../application/app/constants/custom_color.dart';
import '../detail_viewmodel.dart';

class DetailBody extends HookViewModelWidget<DetailViewModel> {
  const DetailBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget buildViewModelWidget(BuildContext context, DetailViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 320.h,
          child: PageView.builder(
            itemCount: viewModel.imageList.length,
            pageSnapping: true,
            onPageChanged: (index) => viewModel.onPageChange(index),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: CustomColor.primaryColor,
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                  color: CustomColor.accentColor,
                ),
                child: Image.network(
                  viewModel.imageList[index],
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        color: CustomColor.primaryColor,
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List<Widget>.generate(
            viewModel.imageList.length,
            (index) {
              return Container(
                margin: EdgeInsets.all(3.h),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: viewModel.imageIndex == index
                        ? CustomColor.primaryColor
                        : CustomColor.secondaryColor,
                    shape: BoxShape.circle),
              );
            },
          ),
        ),
      ],
    );
  }
}
