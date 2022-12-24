import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';

class DetailViewModel extends BaseViewModel {
  DetailViewModel({required this.name});

  final String name;
  // final List<String> imageList;

  final _navigationService = locator<NavigationService>();

  int imageIndex = 0;

  List<String> imageList = [
    "https://images.dog.ceo/breeds/hound-afghan/n02088094_1003.jpg",
    "https://images.dog.ceo/breeds/hound-afghan/n02088094_1007.jpg",
    "https://images.dog.ceo/breeds/hound-afghan/n02088094_1023.jpg",
    "https://images.dog.ceo/breeds/hound-afghan/n02088094_10263.jpg",
    "https://images.dog.ceo/breeds/hound-afghan/n02088094_10715.jpg",
    "https://images.dog.ceo/breeds/hound-afghan/n02088094_10822.jpg",
    "https://images.dog.ceo/breeds/hound-afghan/n02088094_10832.jpg",
    "https://images.dog.ceo/breeds/hound-afghan/n02088094_10982.jpg",
    "https://images.dog.ceo/breeds/hound-afghan/n02088094_11006.jpg",
    "https://images.dog.ceo/breeds/hound-afghan/n02088094_11172.jpg",
  ];

  void navBack() {
    _navigationService.back();
  }

  void onPageChange(int i) {
    imageIndex = i;
    notifyListeners();
  }
}
