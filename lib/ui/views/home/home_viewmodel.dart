import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../infrastructure/apis/dog_api.dart';

class HomeViewModel extends FutureViewModel {
  final _navigationService = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();
  final _dogApi = locator<DogApi>();

  @override
  Future futureToRun() async {
    await getBreed();
  }

  String breedName = '';
  bool isLoadingImage = false;
  Map<String, dynamic> breedList = {};

  Future getBreedImage(int index) async {
    breedName = breedList.keys.toList()[index];

    isLoadingImage = true;

    final res = await runBusyFuture(_dogApi.getBreedImageList(breedName));

    res.fold(
      (error) {
        isLoadingImage = false;

        _snackbarService.showCustomSnackBar(
          message: error.message ?? '',
          variant: 'failed',
          duration: const Duration(seconds: 3),
        );
      },
      (res) {
        isLoadingImage = false;

        _navigationService.navigateToDetailView(
          name: breedName,
          imageList: res.message ?? [],
        );
      },
    );
  }

  Future getBreed() async {
    final res = await runBusyFuture(_dogApi.getBreedList());

    res.fold(
      (error) {
        _snackbarService.showCustomSnackBar(
          message: error.message ?? '',
          variant: 'failed',
          duration: const Duration(seconds: 3),
        );
      },
      (res) {
        breedList = res.message ?? {};
      },
    );
  }
}
