import 'package:get/get.dart';

class SelectLanguageController extends GetxController {
  var isEnglish = "English".obs;
  var isDark = "Dark".obs;

  @override
  void onInit() {
    getInitialThemeAndLang();
    super.onInit();
  }

  getInitialThemeAndLang() {
    isDark(Get.isDarkMode ? "Dark" : "Light");
    isEnglish(Get.locale.toString() == "en" ? "English" : "Nepali");
  }
}
