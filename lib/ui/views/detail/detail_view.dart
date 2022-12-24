import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'detail_viewmodel.dart';

class DetailView extends ViewModelBuilderWidget<DetailViewModel> {
  const DetailView({super.key});

  @override
  DetailViewModel viewModelBuilder(BuildContext context) => DetailViewModel();

  @override
  Widget builder(
      BuildContext context, DetailViewModel viewModel, Widget? child) {
    return Scaffold(
      body: Center(
        child: Text(viewModel.detail),
      ),
    );
  }
}
