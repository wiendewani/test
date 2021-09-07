import 'package:flutter/material.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';

class ContentSection extends StatelessWidget {
  Widget _item() {
    return Container(
      margin: EdgeInsets.all(1.0),
      child: Stack(
        children: [
          Image.asset("assets/Images/flower_1.png"),
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
    return Container(
      child: GridView.count(
        physics: ScrollPhysics(),
        crossAxisCount: 3,
        shrinkWrap: true,
        children: [_item(),_item(),_item(),_item(),_item(),_item(),_item(),_item(),_item(),_item(),_item(),_item()],
      ),
    );
  }
}
