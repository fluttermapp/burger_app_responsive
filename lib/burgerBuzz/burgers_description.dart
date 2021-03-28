import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../k_padding.dart';
import 'item_description/top_bar_description.dart';

class BurgersDescription extends StatelessWidget {
  const BurgersDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              TopBarDescription(),
              Divider(thickness: 1),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(kPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage("images/burger_profile.png"),
                      ),
                      SizedBox(width: kPadding),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: "The Buzz Chicken Burger  ",
                                          style: GoogleFonts.knewave().copyWith(fontSize: 30),
                                          /*
                                          Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .copyWith(fontSize: 20),
                                              */
                                          children: [
                                            TextSpan(
                                                text: "Burger Buzz",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    .copyWith()),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Burger",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .copyWith(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: kPadding / 2),
                                Text("\$ 8", style: TextStyle(fontSize: 20)),
                              ],
                            ),
                            SizedBox(height: kPadding),
                            LayoutBuilder(
                              builder: (context, constraints) => SizedBox(
                                width: constraints.maxWidth > 840
                                    ? 800
                                    : constraints.maxWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: constraints.maxWidth > 840
                                          ? 600
                                          : constraints.maxWidth - 200,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          "images/burger1.png",
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Divider(thickness: 1),
                                    SizedBox(height: kPadding / 2),
                                    Text(
                                      "The most loved chicken burger in the univers. \n \nBacon ipsum dolor amet ham sausage pork chop andouille tail, ball tip meatloaf. Tongue pork belly venison jerky spare ribs chicken. Shank tail rump sausage, swine biltong pancetta. Ball tip jowl kielbasa pork loin, meatball turducken chislic pork belly ham bresaola meatloaf alcatra. \n\nPork loin kielbasa brisket, short ribs chislic tongue spare ribs.  \n\nJowl ribeye porchetta buffalo frankfurter, cupim ham tongue cow meatball alcatra bresaola capicola.\n\nHamburger alcatra drumstick, sirloin tenderloin biltong jowl brisket tail.",
                                      style: TextStyle(),
                                    ),
                                    SizedBox(height: kPadding),
                                    Row(
                                      children: [
                                        Spacer(),
                                        Text("Reviews (33) ",
                                            style: TextStyle(fontSize: 15)),
                                        Icon(Icons.favorite,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.favorite,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.favorite,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.favorite,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.favorite_border,
                                            color:
                                                Theme.of(context).primaryColor),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
