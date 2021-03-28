import 'package:flutter/material.dart';
import 'package:burger_app/burgerBuzz/burger_drawer.dart';
import 'package:burger_app/burgerBuzz/burgers_description.dart';
import 'package:burger_app/models/product_item.dart';
import 'package:provider/provider.dart';

import '../k_padding.dart';
import '../provider_preferences.dart';
import '../responsive_layout.dart';
import 'items/categories.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'items/burger_item.dart';

class Burgers extends StatefulWidget {
  const Burgers({
    Key key,
  }) : super(key: key);

  @override
  _BurgersState createState() => _BurgersState();
}

class _BurgersState extends State<Burgers> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final userPreferences = Provider.of<UserPreference>(context);
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250),
        child: BurgerDrawer(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: kIsWeb ? kPadding : 0),
        color: Theme.of(context).accentColor,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  SizedBox(
                    width: kPadding / 2,
                  ),
                  IconButton(
                    icon: Icon(Theme.of(context).brightness == Brightness.light
                        ? Icons.brightness_4
                        : Icons.brightness_high),
                    onPressed: () {
                      Theme.of(context).brightness == Brightness.light
                          ? userPreferences.changePreferences(2)
                          : userPreferences.changePreferences(1);
                    },
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: kPadding, vertical: 4),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          fillColor: Colors.white.withOpacity(0.5),
                          filled: true,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(kPadding * 0.70),
                            child: Icon(Icons.search),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (ResponsiveLayout.isIphone(context))
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        _scaffoldKey.currentState.openEndDrawer();
                      },
                    ),
                  SizedBox(width: kPadding / 2)
                ],
              ),
              SizedBox(
                height: kPadding / 2,
              ),
              Image.asset(
                "images/burgerbuzz.png",
                width: 170,
              ),
              Categories(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPadding),
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: kPadding),
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kPadding,
                      crossAxisSpacing: kPadding,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => BurgerItem(
                      selected: ResponsiveLayout.isIphone(context) ||
                              ResponsiveLayout.isIpad(context)
                          ? false
                          : index == 0,
                      item: products[index],
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BurgersDescription(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
