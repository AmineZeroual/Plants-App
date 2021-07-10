import 'package:flutter/material.dart';

import '../Constant.dart';

class TitelandPrice extends StatelessWidget {
  const TitelandPrice({
    Key key, this.title, this.country, this.price,
  }) ;
  final String title;
  final String country;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                      text: country,
                      style: TextStyle(
                        fontSize: 20,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300,
                      )
                  )
                ],
              )
            ]),
          ),
          Spacer(),
          Text(price,style: Theme.of(context).textTheme.headline5.copyWith(
            color: kPrimaryColor,
          ),),
        ],
      ),
    );
  }
}
