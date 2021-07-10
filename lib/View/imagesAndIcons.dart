import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constant.dart';


class IconAndImage extends StatelessWidget {
  const IconAndImage({
    Key key,
    @required this.size, this.image,
  }) ;

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:
              EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      icon: SvgPicture.asset(
                          "assets/icons/back_arrow.svg"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Spacer(),
                  OptionsButton(
                    images: "assets/icons/sun.svg",
                  ),
                  Spacer(),
                  OptionsButton(
                    images: "assets/icons/icon_2.svg",
                  ),
                  Spacer(),
                  OptionsButton(
                    images: "assets/icons/icon_3.svg",
                  ),
                  Spacer(),
                  OptionsButton(
                    images: "assets/icons/icon_4.svg",
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: size.height * 0.80,
            width: size.width * 0.71,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: kPrimaryColor.withOpacity(0.30),
                )
              ],
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OptionsButton extends StatelessWidget {
  const OptionsButton({
    Key key,
    this.images,
  });

  final String images;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 1.8),
      height: 65,
      width: 62,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.30),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          )
        ],
      ),
      child: SvgPicture.asset(images),
    );
  }
}
