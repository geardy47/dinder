# Dinder

A dating app for dogs only, which can help you to choose what breed they want to choose for your own pet. Using flutter as the framework to build Dinder on multi-platform from a single codebase.

[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)](https://www.android.com)
[![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)](https://www.apple.com/id/ios/ios-16/)

## Demo

<img src="documentation/app.gif" alt="demo" width="360"/>

## Architecture

We are using [Stacked Architecture](https://www.filledstacks.com/post/flutter-and-provider-architecture-using-stacked) which was an implementation of MVVM.

## Flutter Package

| Package            | Version                                                                                                            |
| ------------------ | ------------------------------------------------------------------------------------------------------------------ |
| stacked            | [![pub package](https://img.shields.io/pub/v/stacked.svg)](https://pub.dev/packages/stacked)                       |
| stacked_services   | [![pub package](https://img.shields.io/pub/v/stacked_services.svg)](https://pub.dev/packages/stacked_services)     |
| stacked_hooks      | [![pub package](https://img.shields.io/pub/v/stacked_hooks.svg)](https://pub.dev/packages/stacked_hooks)           |
| freezed_annotation | [![pub package](https://img.shields.io/pub/v/freezed_annotation.svg)](https://pub.dev/packages/freezed_annotation) |
| json_annotation    | [![pub package](https://img.shields.io/pub/v/json_annotation.svg)](https://pub.dev/packages/json_annotation)       |
| cupertino_icons    | [![pub package](https://img.shields.io/pub/v/cupertino_icons.svg)](https://pub.dev/packages/cupertino_icons)       |
| flutter_svg        | [![pub package](https://img.shields.io/pub/v/flutter_svg.svg)](https://pub.dev/packages/flutter_svg)               |
| dartz              | [![pub package](https://img.shields.io/pub/v/dartz.svg)](https://pub.dev/packages/dartz)                           |
| dio                | [![pub package](https://img.shields.io/pub/v/dio.svg)](https://pub.dev/packages/dio)                               |
| flutter_screenutil | [![pub package](https://img.shields.io/pub/v/flutter_screenutil.svg)](https://pub.dev/packages/flutter_screenutil) |
| shared_preferences | [![pub package](https://img.shields.io/pub/v/shared_preferences.svg)](https://pub.dev/packages/shared_preferences) |
| flutter_lints      | [![pub package](https://img.shields.io/pub/v/flutter_lints.svg)](https://pub.dev/packages/flutter_lints)           |
| build_runner       | [![pub package](https://img.shields.io/pub/v/build_runner.svg)](https://pub.dev/packages/build_runner)             |
| freezed            | [![pub package](https://img.shields.io/pub/v/freezed.svg)](https://pub.dev/packages/freezed)                       |
| stacked_generator  | [![pub package](https://img.shields.io/pub/v/stacked_generator.svg)](https://pub.dev/packages/stacked_generator)   |
| json_serializable  | [![pub package](https://img.shields.io/pub/v/json_serializable.svg)](https://pub.dev/packages/json_serializable)   |


## Running The App

To launch the app in the Simulator, ensure that the Simulator is running and enter the following command from the root of the project in the terminal:

``` dart
$ flutter pub get
$ flutter run
```

## Build APK Release

``` dart
$ flutter build apk --release
```

## Build iOS Release

``` dart
$ flutter build ipa --release
```
