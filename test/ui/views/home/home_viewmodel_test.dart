import 'package:dartz/dartz.dart';

import 'package:dinder/application/models/breed_image_list_model/breed_image_list_model.dart';
import 'package:dinder/application/models/breed_list_model/breed_list_model.dart';
import 'package:dinder/infrastructure/apis/dog_api.dart';
import 'package:dinder/ui/views/home/home_viewmodel.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../test_setup.dart';

void main() {
  late DogApi dogApi;

  late HomeViewModel homeViewModel;

  setUp(() {
    registerServices();
    dogApi = getAndRegisterDogApi();
    homeViewModel = HomeViewModel();
  });

  tearDown(() => unregisterServices());

  final breedListModel = BreedListModel(
    message: {
      'affenpinscher': [],
      'african': [],
      'airedale': [],
    },
  );
  final breedImageListModel = BreedImageListModel(
    message: [
      "https://images.dog.ceo/breeds/hound-afghan/n02088094_1003.jpg",
      "https://images.dog.ceo/breeds/hound-afghan/n02088094_1007.jpg",
    ],
  );

  test(
    'When getBreed() called Then breedList is not Empty',
    () async {
      when(dogApi.getBreedList()).thenAnswer(
        (_) async => Right(breedListModel),
      );

      await homeViewModel.getBreed();

      expect(homeViewModel.breedList.isNotEmpty, true);
    },
  );

  test(
    'When getBreedImage() called Then loading getBreedImageList is false',
    () async {
      when(dogApi.getBreedList()).thenAnswer(
        (_) async => Right(breedListModel),
      );

      when(dogApi.getBreedImageList('african')).thenAnswer(
        (_) async => Right(breedImageListModel),
      );

      await homeViewModel.getBreed().then(
            (value) async => await homeViewModel.getBreedImage(1),
          );

      expect(homeViewModel.isLoadingImage, false);
    },
  );
}
