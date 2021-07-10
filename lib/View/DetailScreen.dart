import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constant.dart';
import 'TitleAndPrice.dart';
import 'imagesAndIcons.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            IconAndImage(
              size: size,
              image: "assets/images/img.png",
            ),
            TitelandPrice(
              title: "Angelica\n",
              price: "\$440",
              country: "Russia",
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width / 2,
                  height: 85,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: Theme.of(context).textTheme.button.copyWith(
                          color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                      ),
                    ),
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(
                  width: size.width / 2,
                  height: 85,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Description",
                      style: Theme.of(context).textTheme.button.copyWith(
                          color: kTextColor, fontSize: 22,fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                      ),
                    ),
                    color: kBackgroundColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding,
            )
          ],
        ),
      ),
    );
  }
}
