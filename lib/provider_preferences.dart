import 'package:flutter/material.dart';

enum preferences { SystemPreference, Light, Dark }

class UserPreference with ChangeNotifier {
  bool systemPreferenceSwitch = true;
  bool lightSwitch = false;
  bool darkSwitch = false;
  ThemeMode themeMode;

  void changePreferences(selectedPreference) {
    print(selectedPreference);
    print(preferences.Dark);
    print("System preference" + systemPreferenceSwitch.toString());
    print(lightSwitch);
    print(darkSwitch);
    switch (selectedPreference) {
      case 0:
        systemPreferenceSwitch = true;
        lightSwitch = false;
        darkSwitch = false;
        themeMode = null;
        break;
      case 1:
        systemPreferenceSwitch = false;
        lightSwitch = true;
        darkSwitch = false;
        themeMode = ThemeMode.light;
        break;
      case 2:
        systemPreferenceSwitch = false;
        lightSwitch = false;
        darkSwitch = true;
        themeMode = ThemeMode.dark;
        break;
      default:
    }
    notifyListeners();
  }
}
