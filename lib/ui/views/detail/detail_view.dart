import 'package:dinder/application/helpers/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../application/app/constants/custom_color.dart';
import '../../../application/app/theme/text_styles.dart';
import 'detail_viewmodel.dart';
import 'widgets/detail_body.dart';

class DetailView extends ViewModelBuilderWidget<DetailViewModel> {
  const DetailView({
    super.key,
    required this.name,
    required this.imageList,
  });

  final String name;
  final List<String> imageList;

  @override
  DetailViewModel viewModelBuilder(BuildContext context) =>
      DetailViewModel(name: name, imageList: imageList);

  @override
  Widget builder(
      BuildContext context, DetailViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: viewModel.navBack,
        ),
        title: Text(
          viewModel.name.toCapitalized(),
          style: tsTitle.copyWith(color: CustomColor.textColor),
        ),
      ),
      body: const DetailBody(),
    );
  }
}
