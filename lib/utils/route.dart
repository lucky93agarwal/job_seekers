
import 'package:get/get.dart';
import 'package:job_seekers/core/routing/route_path.dart';
import 'package:job_seekers/ui/screens/splash.dart';

// Import the GetX
class ScreenRouter {
  static List<GetPage> routes = [
    //*----------------------- Unauthorized ---------------------------------
    GetPage(
        name: RoutePath.splashScreen, page: () => SplashScreen()),

  ];
}
