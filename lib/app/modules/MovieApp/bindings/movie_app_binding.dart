import 'package:get/get.dart';

import '../controllers/movie_app_controller.dart';

class MovieAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MovieAppController>(
      () => MovieAppController(),
    );
  }
}
