import 'package:flutter/material.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';

class BonusSection extends StatelessWidget {
  Widget _item(String title, String rupiah) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: SpacingDimens.spacing16,
      shadowColor: PaletteColor.test3_primarybg,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
            top: SpacingDimens.spacing24,
            left: SpacingDimens.spacing32,
            bottom: SpacingDimens.spacing24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TypographyStyle.heading1
                  .merge(TextStyle(color: PaletteColor.test3_primary_orange)),
            ),
            SizedBox(
              height: SpacingDimens.spacing4,
            ),
            Text(
              rupiah,
              style: TypographyStyle.title.merge(TextStyle(fontSize: 22.0)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _item("Total Bonus", "Rp 5.000.000,00"),
        SizedBox(height: SpacingDimens.spacing8,),
        _item("Pending Bonus","Rp 50.000.000,00")
      ],
    );
  }
}
