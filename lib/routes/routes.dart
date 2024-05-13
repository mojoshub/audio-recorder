import 'package:get/get.dart';
import 'package:timeit_1/screens/audiolistscreen.dart';
import 'package:timeit_1/screens/mainscreen.dart';

class Routes {
  static var routes = [
    GetPage(name: '/', page: () => const MainScreen()),
    GetPage(name: '/audiolist', page: () => const AudioLIst()),
  ];
}
