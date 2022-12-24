import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../application/app/constants/custom_color.dart';
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
    return Stack(
      children: [
        const Scaffold(
          body: CustomScrollView(
            key: Key('sliverList'),
            slivers: [
              CustomSliverAppBar(),
              CustomSliverRoundedCorner(),
              CustomTitle(),
              CustomSliverList(),
            ],
          ),
        ),
        Visibility(
          visible: viewModel.isBusy && viewModel.isLoadingImage,
          child: Stack(
            children: [
              Opacity(
                opacity: 0.6,
                child: ModalBarrier(
                  dismissible: false,
                  color: CustomColor.accentColor,
                ),
              ),
              Center(
                child: CircularProgressIndicator(
                  color: CustomColor.primaryColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
