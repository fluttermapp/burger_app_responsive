import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider_preferences.dart';

enum preferences { SystemPreference, Light, Dark }

class UserPreferencePage extends StatelessWidget {
  static const tag = "user_preference_page";

  @override
  Widget build(BuildContext context) {
    final userPreferences = Provider.of<UserPreference>(context);
    bool systemPreferenceSwitch = userPreferences.systemPreferenceSwitch;
    bool lightSwitch = userPreferences.lightSwitch;
    bool darkSwitch = userPreferences.darkSwitch;
    return Scaffold(
      appBar: AppBar(
        title: Text("User Preference"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("User system preference"),
              ),
              Switch(
                value: systemPreferenceSwitch,
                onChanged: (newSwitchValue) {
                  systemPreferenceSwitch
                      ? print("Blocked")
                      : userPreferences.changePreferences(0);
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Light mode"),
              ),
              Switch(
                value: lightSwitch,
                onChanged: (newSwitchValue) {
                  lightSwitch
                      ? print("Blocked")
                      : userPreferences.changePreferences(1);
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Dark mode"),
              ),
              Switch(
                value: darkSwitch,
                onChanged: (newSwitchValue) {
                  darkSwitch
                      ? print("Blocked")
                      : userPreferences.changePreferences(2);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
