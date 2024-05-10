// import 'package:flutter/widgets.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:project2/src/theme_shared_preferences.dart';

// class ThemeModal extends ChangeNotifier {
//   late bool _isDark;
//   late ThemeSharedPrefrences themeSharedPrefrences;
//   bool get isDark => _isDark;
//   ThemeModal() {
//     _isDark = false;
//     themeSharedPrefrences = ThemeSharedPrefrences();
//     getThemePrefrences();
//   }

//   set isDark(bool value) {
//     _isDark = value;
//     themeSharedPrefrences.setTheme(value);
//     notifyListeners();
//   }

//   getThemePrefrences() async {
//     _isDark = await themeSharedPrefrences.getTheme();
//     notifyListeners();
//   }
// }
