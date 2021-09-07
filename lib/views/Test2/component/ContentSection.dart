import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';

class ContentSection extends StatelessWidget {



  Widget _item(String photo) {
    return Container(
      margin: EdgeInsets.all(1.0),
      child: Stack(
        children: [
          Image.asset(photo, width: double.infinity,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(left: SpacingDimens.spacing4),
              width: double.infinity,
              color: PaletteColor.black.withOpacity(0.3),
              child: Text(
                "Nama Customer",
                style: TypographyStyle.mini.merge(
                  TextStyle(color: PaletteColor.primarybg),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: PaletteColor.test2_content,
              borderRadius: BorderRadius.circular(SpacingDimens.spacing12),
            ),
            margin: EdgeInsets.only(
                left: SpacingDimens.spacing72,
                top: SpacingDimens.spacing8,
                right: SpacingDimens.spacing8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: SpacingDimens.spacing12,
                  color: PaletteColor.yellow,
                ),
                Text(
                  "5.0",
                  style: TypographyStyle.mini
                      .merge(TextStyle(color: PaletteColor.primarybg)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    List photo = [
      "assets/Images/flower_1.png",
      "assets/Images/flower_2.png",
      "assets/Images/flower_3.png",
      "assets/Images/flower_1.png",
      "assets/Images/flower_3.png",
      "assets/Images/flower_2.png",
      "assets/Images/flower_3.png",
      "assets/Images/flower_1.png",
      "assets/Images/flower_2.png",
      "assets/Images/flower_2.png",
      "assets/Images/flower_3.png",
      "assets/Images/flower_1.png",

    ];
    
    return Container(
      child: GridView.count(
        physics: ScrollPhysics(),
        crossAxisCount: 3,
        shrinkWrap: true,
        children: List.generate(12, (index) {
          return _item(photo[index]);
        })
      ),
    );
  }
}
