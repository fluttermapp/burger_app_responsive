import 'package:flutter/material.dart';
import 'package:burger_app/widget_tree.dart';
import 'package:provider/provider.dart';

import 'provider_preferences.dart';

void main() {
  runApp(MyAppProviderSet());
}

class MyAppProviderSet extends StatefulWidget {
  MyAppProviderSet({Key key}) : super(key: key);

  @override
  _MyAppProviderSetState createState() => _MyAppProviderSetState();
}

class _MyAppProviderSetState extends State<MyAppProviderSet> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserPreference(),
        ),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userPreferences = Provider.of<UserPreference>(context);
    ThemeMode _themeMode = userPreferences.themeMode;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burger Buzz',
      themeMode: _themeMode,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.orange,
        accentColor: Colors.orange,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.orange,
        accentColor: Colors.orange,
        brightness: Brightness.dark,
      ),
      home: WidgetTree(),
    );
  }
}
