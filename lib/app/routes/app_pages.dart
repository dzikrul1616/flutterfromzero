import 'package:flutterfromzero/app/modules/Reparasi/Rekomendasi/movie_app_view.dart';
import 'package:flutterfromzero/app/modules/Reparasi/reparasi.dart';
import 'package:get/get.dart';

import '../modules/HeroAnimation/bindings/widget_binding.dart';
import '../modules/HeroAnimation/bindings/widget_binding.dart';
import '../modules/HeroAnimation/views/widget_view.dart';
import '../modules/HeroAnimation/views/widget_view.dart';
import '../modules/MovieApp/bindings/movie_app_binding.dart';
import '../modules/MovieApp/views/movie_app_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WIDGET,
      page: () => const WidgetView(),
      binding: WidgetBinding(),
    ),
    GetPage(
      name: _Paths.MOVIE_APP,
      page: () => MovieAppView(
        gambar: [],
        judul: [],
        deskripsi: [],
      ),
      binding: MovieAppBinding(),
    ),
    GetPage(name: _Paths.REPARASI, page: () => Reparasi())
  ];
}
