import 'package:get/get.dart';
import 'package:job_seekers/controllers/select_language_controller.dart';

class SelectLanguageBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => SelectLanguageController());
  }
}