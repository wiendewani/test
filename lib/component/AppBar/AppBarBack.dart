
import 'package:flutter/material.dart';
import 'package:ordo/theme/IconComponent.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';

class AppBarBack extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext ctx;
  final String title;

  AppBarBack({@required this.ctx, @required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: PaletteColor.test1_primarybg,
      title: Text(
        'Profle Page',
        style: TypographyStyle.heading1.merge(
          TextStyle(
            color: PaletteColor.black,
          ),
        ),
      ),
      leading:Container(
        padding: EdgeInsets.only(left: SpacingDimens.spacing24),
        child: ElevatedButton(
          onPressed: () {},
          child: Icon(Icons.arrow_back_rounded, color: Colors.white),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(SpacingDimens.spacing4),
            primary: PaletteColor.test1_primary, // <-- Button color
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.only(
              right: SpacingDimens.spacing16,
            ),
            child: Icon(
              IconComponent.shopping_cart,
              size: 20,
              color: PaletteColor.test1_primary,
            ),
          ),
        )
      ],
    );
  }
}
