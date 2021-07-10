import 'package:flutter/material.dart';

import '../Constant.dart';

class ImagesFeaturedPlants extends StatelessWidget {
  const ImagesFeaturedPlants({
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
          ImageItems(
            size: size,
            images: "assets/images/bottom_img_1.png",
            onTapIn: () {},
          ),
          ImageItems(
            size: size,
            images: "assets/images/bottom_img_2.png",
            onTapIn: () {},
          ),
        ],
      ),
    );
  }
}

class ImageItems extends StatelessWidget {
  const ImageItems({
    @required this.size,
    this.images,
    this.onTapIn,
  });

  final Size size;
  final String images;
  final Function onTapIn;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapIn,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(images),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
