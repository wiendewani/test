import 'package:flutter/material.dart';
import 'package:ordo/theme/IconComponent.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: SpacingDimens.spacing40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    // margin: EdgeInsets.only(top: SpacingDimens.spacing44),
                    width: 68.0,
                    height: 68.0,
                    child: Image(
                      image: AssetImage("assets/Images/circle.png"),
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: SpacingDimens.spacing44),
                    // color: PaletteColor.test1_primary,
                    padding: EdgeInsets.only(left: SpacingDimens.spacing8),
                    width: 52.0,
                    height: 52.0,
                    child: CircleAvatar(
                      radius: SpacingDimens.spacing20,
                      backgroundImage:
                          AssetImage("assets/Images/profile_test1.jpg"),
                      backgroundColor: Colors.transparent,
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: SpacingDimens.spacing12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "David Morel",
                      style: TypographyStyle.title,
                    ),
                    Text(
                      "B 1201 FA",
                      style: TypographyStyle.subtitle1
                          .merge(TextStyle(fontWeight: FontWeight.w500,color: PaletteColor.test1_primary80)),
                    )
                  ],
                ),
              ),

            ],
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [
                      PaletteColor.test1_primary,
                      PaletteColor.test1_primary80,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight
                )
            ),
            child: CircleAvatar(

              backgroundColor: Colors.transparent,
              radius: 32,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  IconComponent.message,
                  size: 24,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
