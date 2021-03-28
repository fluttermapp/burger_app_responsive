import 'package:flutter/material.dart';
import 'package:burger_app/models/product_item.dart';

import '../../k_padding.dart';

class BurgerItem extends StatelessWidget {
  final ProductItem item;
  final Function onPressed;
  final bool selected;
  const BurgerItem({
    Key key,
    this.item,
    this.onPressed,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLight = Theme.of(context).brightness == Brightness.light;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: selected
              ? Colors.teal
              : isLight
                  ? Colors.white.withOpacity(0.8)
                  : Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 5,
              color: Colors.black.withOpacity(0.2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(kPadding / 3),
              child: Text(
                item.title,
                style: TextStyle(
                    color: selected
                        ? Colors.white
                        : isLight
                            ? Colors.black.withOpacity(0.5)
                            : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(kPadding),
                child: Image.asset(
                  item.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(kPadding / 3),
                  child: Text(
                    "\$ ${item.amount}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: selected
                          ? Colors.white
                          : isLight
                              ? Colors.black.withOpacity(0.5)
                              : Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_box,
                    color:
                        selected ? Colors.white : Theme.of(context).accentColor,
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
