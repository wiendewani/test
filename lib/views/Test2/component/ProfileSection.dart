import 'package:flutter/material.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';

class ProfileSection extends StatelessWidget {
  String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo";

  Widget _item(String title, double number) {
    return Column(
      children: [Text(title), Text(number.toString())],
    );
  }

  Widget _describeProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SpacingDimens.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Dina Florist", style: TypographyStyle.caption2),
          Padding(
            padding: const EdgeInsets.only(
                right: SpacingDimens.spacing8,
                bottom: SpacingDimens.spacing12,
                top: SpacingDimens.spacing4),
            child: Text(
              "Toko Bunga terbaik se Indonesia Raya Harga Murah Produk Berkualitas",
              style: TypographyStyle.mini,
            ),
          )
        ],
      ),
    );
  }

  Widget _button() {
    return OutlinedButton(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: SpacingDimens.spacing8),
        alignment: Alignment.center,
        width: double.infinity,
        child: Text(
          "PORTOFOLIO",
          style: TypographyStyle.heading1
              .merge(TextStyle(color: PaletteColor.black)),
        ),
      ),
      onPressed: () => print("it's pressed"),
      style: ElevatedButton.styleFrom(
        side: BorderSide(width: 1.5, color: PaletteColor.grey40),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 96,
              width: 96,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: PaletteColor.grey60)),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset("assets/Images/profile_test2.png"),
              ),
            ),
            SizedBox(
              width: SpacingDimens.spacing36,
            ),
            _item("Rating", 5.0),
            SizedBox(
              width: SpacingDimens.spacing32,
            ),
            _item("Review", 100),
            SizedBox(
              width: SpacingDimens.spacing32,
            ),
            _item("Pesanan", 162),
          ],
        ),
        _describeProfile(),
        _button()
      ],
    );
  }
}
