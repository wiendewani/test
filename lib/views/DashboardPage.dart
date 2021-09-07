import 'package:flutter/material.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: SpacingDimens.spacing88,
            horizontal: SpacingDimens.spacing52),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          _title("[Wien Nurul Dewani]"),
          SizedBox(
            height: SpacingDimens.spacing88,
          ),
          _buttonRoute(),
          _buttonRoute(),
          _buttonRoute(),
        ]),
      ),
    );
  }

  Widget _title(name) {
    return Container(
      child: Column(
        children: [
          Text("Made by"),
          SizedBox(height: SpacingDimens.spacing20),
          Text(name, style: TypographyStyle.title.merge(TextStyle(fontSize: 22.0)))
        ],
      ),
    );
  }

  Widget _buttonRoute() {
    return Container(
      margin: EdgeInsets.only(bottom: SpacingDimens.spacing24),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: PaletteColor.black,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(24.0),
          ),
        ),
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: SpacingDimens.spacing16),
          child: Text(
            "Test 1",
            style: TypographyStyle.button1.merge(
                TextStyle(color: PaletteColor.primarybg, fontSize: 20.0)),
          ),
        ),
      ),
    );
  }
}
