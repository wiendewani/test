import 'package:flutter/material.dart';
import 'package:ordo/theme/IconComponent.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';

class RebateSection extends StatelessWidget {

  List<String> date = [
    "14 Juli 2021",
    "15 Juli 2021",
    "15 Juli 2021",
    "17 Juli 2021",
    "17 Juli 2021",
    "18 Juli 2021",

  ];

  Widget _titleAndButton() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: SpacingDimens.spacing16),
          child: Text(
            "Daftar Rebate",
            style: TypographyStyle.paragraph.merge(
              TextStyle(color: PaletteColor.test3_primary41_green80),
            ),
          ),
        ),
        Expanded(
          child: Container(
            // padding: EdgeInsets.symmetric(horizontal: SpacingDimens.s),
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(SpacingDimens.spacing8),
                ),
                primary: PaletteColor.test3_primary_orange, // background
              ),
              onPressed: () {},
              child: Text(
                'Semua',
                style: TypographyStyle.mini.merge(
                  TextStyle(
                      color: PaletteColor.primarybg,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
                left: SpacingDimens.spacing12, right: SpacingDimens.spacing12),
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(SpacingDimens.spacing8),
                ),
                primary: PaletteColor.test3_primary_blue80, // background
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Filter',
                    style: TypographyStyle.mini.merge(
                      TextStyle(
                          color: PaletteColor.primarybg,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(width: 2.0),
                  Icon(
                    IconComponent.filter,
                    size: SpacingDimens.spacing12,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _itemList(String date) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: SpacingDimens.spacing12,
          horizontal: SpacingDimens.spacing16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ID Transaksi",
                style: TypographyStyle.mini.merge(
                    TextStyle(color: PaletteColor.test3_primary41_green80)),
              ),
              Text(
                "#EC1201211",
                style: TypographyStyle.mini.merge(TextStyle(
                    color: PaletteColor.test3_primary_green,
                    fontWeight: FontWeight.w500)),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rebate",
                style: TypographyStyle.mini.merge(
                    TextStyle(color: PaletteColor.test3_primary41_green80)),
              ),
              Text(
                "Rp.150.000",
                style: TypographyStyle.mini.merge(TextStyle(
                    color: PaletteColor.green,
                    fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tanggal",
                style: TypographyStyle.mini.merge(
                    TextStyle(color: PaletteColor.test3_primary41_green80)),
              ),
              Text(
                date,
                style: TypographyStyle.mini.merge(TextStyle(
                    color: PaletteColor.green,
                    fontWeight: FontWeight.w600)),
              ),
            ],
          ),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: SpacingDimens.spacing12),
      decoration: BoxDecoration(
        color: PaletteColor.primarybg,
        borderRadius: BorderRadius.circular(SpacingDimens.spacing16),
      ),
      child: Column(
        children: [
          _titleAndButton(),
          Divider(
            thickness: 1,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: date.length,
            itemBuilder: (BuildContext context,index){
              return _itemList(date[index]);
            },
          )
        ],
      ),
    );
  }
}
