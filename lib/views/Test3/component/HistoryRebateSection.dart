import 'package:flutter/material.dart';
import 'package:ordo/theme/IconComponent.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';

class HistoryRebateSection extends StatelessWidget {
  Widget _itemHistory() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: SpacingDimens.spacing20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      PaletteColor.test3_primary_blue,
                      PaletteColor.test3_primary_blue80,
                    ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 16,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      IconComponent.history,
                      size: 16,
                    ),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: SpacingDimens.spacing12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "#REBATEC12021",
                      style: TypographyStyle.caption1.merge(TextStyle(
                          fontSize: 13.0, fontWeight: FontWeight.w500)),
                    ),
                    Text(
                      "20 Juli 2021",
                      style: TypographyStyle.mini,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: SpacingDimens.spacing12,
                vertical: SpacingDimens.spacing4),
            decoration: BoxDecoration(
              color: PaletteColor.test3_primary_orange,
              borderRadius: BorderRadius.circular(SpacingDimens.spacing16),
            ),
            child: Text(
              "Rp 150.000",
              style: TypographyStyle.paragraph1.merge(
                  TextStyle(fontSize: 11, color: PaletteColor.primarybg)),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: SpacingDimens.spacing12,
        left: SpacingDimens.spacing12,
        right: SpacingDimens.spacing12,
        bottom: SpacingDimens.spacing88,
      ),
      decoration: BoxDecoration(
        color: PaletteColor.primarybg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SpacingDimens.spacing16),
          topRight: Radius.circular(SpacingDimens.spacing16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Riwayat Rebate",
            style: TypographyStyle.heading1
                .merge(TextStyle(color: PaletteColor.test3_primary_orange)),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (BuildContext context, index) {
              return _itemHistory();
            },
          ),
        ],
      ),
    );
  }
}
