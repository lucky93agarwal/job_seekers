import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_storage/get_storage.dart';
import 'package:job_seekers/binding/login_binding.dart';
import 'package:job_seekers/constants/localString/local_string.dart';
import 'package:job_seekers/controllers/global_controller.dart';
import 'package:job_seekers/core/routing/route_path.dart';
import 'package:job_seekers/utils/route.dart';
void main() async{
  await GetStorage.init("TSH");
  GlobalController g = Get.put(GlobalController());
  bool? isdark;
  bool? isEnglish;
  isdark = g.getStorage.read('isDark');
  isEnglish = g.getStorage.read('isEnglish');
  runApp(MyApp(
    isDark: isdark ?? false,
    isEnglish: isEnglish ?? true,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isDark, required this.isEnglish});
  final bool isDark;
  final bool isEnglish;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Job Seekers",
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialBinding: SelectLanguageBinding(),
      translations: LocalString(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      fallbackLocale: const Locale("en"),
      locale: (isEnglish) ? const Locale("en") : const Locale("ne"),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      // home: SelectLanguageView(),
      initialRoute: RoutePath.splashScreen,
      getPages: ScreenRouter.routes,
    );
  }
}
