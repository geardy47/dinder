import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
import 'widgets/custom_sliver_appbar.dart';
import 'widgets/custom_sliver_list.dart';
import 'widgets/custom_sliver_rounded_corner.dart';
import 'widgets/custom_title.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  const HomeView({super.key});

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          CustomSliverRoundedCorner(),
          CustomTitle(),
          CustomSliverList(),
        ],
      ),
    );
  }
}
