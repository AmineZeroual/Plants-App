import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constant.dart';
import 'DetailScreen.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TreeItems(
            size: size,
            treePrice: "\$400",
            tressPic: "assets/images/image_1.png",
            treeName: "Samantha\n",
            treeDescription: "Russia",
            onTapIn: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
          TreeItems(
            size: size,
            treePrice: "\$520",
            tressPic: "assets/images/image_2.png",
            treeName: "Angelicia\n",
            treeDescription: "Russia",
            onTapIn: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
          TreeItems(
            size: size,
            treePrice: "\$350",
            tressPic: "assets/images/image_3.png",
            treeName: "Jasmine\n",
            treeDescription: "Russia",
            onTapIn: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class TreeItems extends StatelessWidget {
  TreeItems({
    @required this.size,
    this.tressPic,
    this.treeName,
    this.treePrice,
    this.treeDescription,
    this.onTapIn,
  });

  final Size size;
  final String tressPic;
  final String treeName;
  final String treePrice;
  final String treeDescription;
  final Function onTapIn;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapIn,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5,
            right: kDefaultPadding / 2),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(tressPic),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: treeName.toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: treeDescription.toUpperCase(),
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        )),
                  ])),
                  Spacer(),
                  Text(
                    treePrice,
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TitelWithButton extends StatelessWidget {
  const TitelWithButton({
    this.Texttitle,
    this.onTap,
  });

  final String Texttitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Texttitle, style: kStyle1),
          FlatButton(
            onPressed: onTap,
            child: Text(
              "More",
              style: kStyle1.copyWith(color: Colors.white, fontSize: 15),
            ),
            color: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    );
  }
}

class BodyHeader extends StatelessWidget {
  const BodyHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * 0.2,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: 20 + kDefaultPadding),
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: Row(
                children: [
                  Text(
                    "HI THERE !",
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: size.height * 0.07,
                decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.circular(23),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.30),
                      )
                    ]),
                child: Row(children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ]),
              ),
            ),
          ],
        ));
  }
}
