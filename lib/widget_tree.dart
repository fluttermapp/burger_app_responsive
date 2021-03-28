import 'package:flutter/material.dart';
import 'package:burger_app/responsive_layout.dart';

import 'burgerBuzz/burger_drawer.dart';
import 'burgerBuzz/burgers_description.dart';
import 'burgerBuzz/burgers.dart';

class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveLayout(
        iphone: Burgers(),
        ipad: Row(
          children: [
            Expanded(
              flex: _size.width < 800 ? 6 : 7,
              child: Burgers(),
            ),
            Expanded(
              flex: _size.width < 800 ? 4 : 3,
              child: BurgerDrawer(),
            ),
          ],
        ),
        ipadTurned: Row(
          children: [
            Expanded(
              flex: _size.width < 900 ? 5 : 4,
              child: Burgers(),
            ),
            Expanded(
              flex: _size.width < 900 ? 5 : 6,
              child: BurgersDescription(),
            ),
          ],
        ),
        macbook: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 3 : 6,
              child: Burgers(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 7 : 10,
              child: BurgersDescription(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: BurgerDrawer(),
            ),
          ],
        ),
      ),
    );
  }
}
