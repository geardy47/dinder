import 'package:dinder/application/app/app.locator.dart';
import 'package:dinder/infrastructure/apis/dog_api.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:mockito/annotations.dart';

import 'package:stacked_services/stacked_services.dart';

import 'test_setup.mocks.dart';

@GenerateMocks(
  [],
  customMocks: [
    /// If we don't supply returnNullOnMissingStub then we'll get an exception when
    /// a non-stubbed method is called.
    MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<SnackbarService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<NavigatorObserver>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<Dio>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<dio.Response>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<DioError>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<DogApi>(onMissingStub: OnMissingStub.returnDefault),
  ],
)
NavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);

  return service;
}

DialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);

  return service;
}

BottomSheetService getAndRegisterBottomSheetService() {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();
  locator.registerSingleton<BottomSheetService>(service);

  return service;
}

SnackbarService getAndRegisterSnackbarService() {
  _removeRegistrationIfExists<SnackbarService>();
  final service = MockSnackbarService();
  locator.registerSingleton<SnackbarService>(service);

  return service;
}

NavigatorObserver getAndRegisterNavigatorObserver() {
  _removeRegistrationIfExists<NavigatorObserver>();
  final service = MockNavigatorObserver();
  locator.registerSingleton<NavigatorObserver>(service);

  return service;
}

Dio getAndRegisterDio() {
  _removeRegistrationIfExists<Dio>();
  final service = MockDio();
  locator.registerSingleton<Dio>(service);

  return service;
}

dio.Response getAndRegisterDioResponse() {
  _removeRegistrationIfExists<dio.Response>();
  final service = MockResponse();
  locator.registerSingleton<dio.Response>(service);

  return service;
}

DioError getAndRegisterDioError() {
  _removeRegistrationIfExists<DioError>();
  final service = MockDioError();
  locator.registerSingleton<DioError>(service);

  return service;
}

DogApi getAndRegisterDogApi() {
  _removeRegistrationIfExists<DogApi>();
  final service = MockDogApi();
  locator.registerSingleton<DogApi>(service);

  return service;
}

void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterDialogService();
  getAndRegisterBottomSheetService();
  getAndRegisterSnackbarService();
  getAndRegisterNavigatorObserver();
  getAndRegisterDio();
  getAndRegisterDioResponse();
  getAndRegisterDioError();
  getAndRegisterDogApi();
}

void unregisterServices() {
  locator.unregister<NavigationService>();
  locator.unregister<DialogService>();
  locator.unregister<BottomSheetService>();
  locator.unregister<SnackbarService>();
  locator.unregister<NavigatorObserver>();
  locator.unregister<Dio>();
  locator.unregister<dio.Response>();
  locator.unregister<DioError>();
  locator.unregister<DogApi>();
}

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
