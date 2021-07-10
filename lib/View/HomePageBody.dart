import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ImagesFeaturedPlants.dart';
import 'itemsComponents.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          BodyHeader(size: size),
          SizedBox(
            height: size.height * 0.04,
          ),
          TitelWithButton(
            Texttitle: "Recomanded",
            onTap: () {},
          ),
          ItemsList(size: size),
          TitelWithButton(
            Texttitle: "Featured Plants",
            onTap: () {},
          ),
          ImagesFeaturedPlants(size: size),
          SizedBox(
            height: kDefaultPadding,
          )

        ],
      ),
    );
  }
}
