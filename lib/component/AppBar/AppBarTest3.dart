import 'package:flutter/material.dart';
import 'package:ordo/component/AppBar/RadiantGradientMask.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';

class AppBarTest3 extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext ctx;
  final String title;
  final IconData icon1;
  final IconData icon2;
  final Color colorPrima;
  final Color colorSecond;

  AppBarTest3({
    @required this.ctx,
    @required this.title,
    @required this.icon1,
    @required this.icon2,
    @required this.colorPrima,
    @required this.colorSecond,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: PaletteColor.primarybg,
      title: Text(
        title,
        style: TypographyStyle.heading1.merge(
          TextStyle(
            color: PaletteColor.black,
          ),
        ),
      ),
      leading: Container(
        padding: EdgeInsets.only(left: SpacingDimens.spacing28),
        child: ElevatedButton(
          onPressed: ()  => Navigator.of(ctx).pop(),
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 20,
          ),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(SpacingDimens.spacing4),
            primary: colorPrima, // <-- Button color
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(
              right: SpacingDimens.spacing16,
            ),
            child: RadiantGradientMask(
              child: Icon(
                icon1,
                size: 20,
              ),
              colorEnd:  colorPrima,
              colorStart: colorSecond,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(
              right: SpacingDimens.spacing16,
            ),
            child: RadiantGradientMask(
              child: Icon(
                icon2,
                size: 20,
              ),
              colorEnd:  colorPrima,
              colorStart:  colorSecond,
            ),
          ),
        )
      ],
    );
  }
}
