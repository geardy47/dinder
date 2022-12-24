import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';

class DetailViewModel extends BaseViewModel {
  DetailViewModel({
    required this.name,
    required this.imageList,
  });

  final String name;
  final List<String> imageList;

  final _navigationService = locator<NavigationService>();

  int imageIndex = 0;

  void navBack() {
    _navigationService.back();
  }

  void onPageChange(int i) {
    imageIndex = i;
    notifyListeners();
  }
}
