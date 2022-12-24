import 'package:dio/dio.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../infrastructure/apis/dog_api.dart';
import '../../ui/views/detail/detail_view.dart';
import '../../ui/views/home/home_view.dart';
import '../services/dio_service.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, path: '/', initial: true),
    MaterialRoute(page: DetailView, path: '/detail'),
  ],
  dependencies: [
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: NavigationService),
    Singleton(
      classType: DioService,
      resolveUsing: DioService.getInstance,
      asType: Dio,
    ),
    LazySingleton(classType: DogApi),
  ],
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
