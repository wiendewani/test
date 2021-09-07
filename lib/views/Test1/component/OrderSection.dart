import 'package:flutter/material.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';

class OrderSection extends StatelessWidget {
  String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo";

  Widget orderItem() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              bottom: SpacingDimens.spacing12, right: SpacingDimens.spacing52),
          child: Row(
            children: [
              Center(
                  child: FittedBox(
                fit: BoxFit.cover,
                child: CircleAvatar(
                  radius: SpacingDimens.spacing36,
                  backgroundImage: AssetImage("assets/Images/strowberi.png"),
                  backgroundColor: Colors.transparent,
                ),
              )),
              Container(
                margin: EdgeInsets.only(left: SpacingDimens.spacing12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Strawberry",
                      style: TypographyStyle.subtitle2,
                    ),
                    Text(
                      "100 Gram",
                      style: TypographyStyle.paragraph1,
                    ),
                    Text(
                      "Rp. 75.000",
                      style: TypographyStyle.heading1.merge(TextStyle(
                          fontWeight: FontWeight.w600,
                          color: PaletteColor.test1_primary)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "2 item",
                    style: TypographyStyle.heading1
                        .merge(TextStyle(fontSize: SpacingDimens.spacing12)),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: SpacingDimens.spacing12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Catatan Item",
              style: TypographyStyle.paragraph1
                  .merge(TextStyle(fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: SpacingDimens.spacing8,
                  bottom: SpacingDimens.spacing12,
                  top: SpacingDimens.spacing4),
              child: Text(
                lorem,
                style: TypographyStyle.mini,
              ),
            )
          ],
        ),
        Divider(),
      ],
    );
  }

  Widget _orderNote() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SpacingDimens.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Catatan Pesanan", style: TypographyStyle.button2),
          Padding(
            padding: const EdgeInsets.only(
                right: SpacingDimens.spacing8,
                bottom: SpacingDimens.spacing12,
                top: SpacingDimens.spacing4),
            child: Text(
              lorem,
              style: TypographyStyle.mini,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pesanan",
            style: TypographyStyle.button2,
          ),
          SizedBox(
            height: SpacingDimens.spacing20,
          ),
          orderItem(),
          orderItem(),
          _orderNote()
        ],
      ),
    );
  }
}
