import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ordo/component/AppBar/AppBarTest3.dart';
import 'package:ordo/theme/IconComponent.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';
import 'package:ordo/views/Test3/component/BonusSection.dart';
import 'package:ordo/views/Test3/component/HistoryRebateSection.dart';
import 'package:ordo/views/Test3/component/RebateSection.dart';

class Test3Page extends StatefulWidget {
  @override
  _Test3PageState createState() => _Test3PageState();
}

class _Test3PageState extends State<Test3Page> {

  int _selectedIndex = 0;

  Widget _bottomNav() {
    return BottomNavigationBar(
      selectedFontSize: 0,
      backgroundColor: Colors.white,
      currentIndex: _selectedIndex,
      // this will be set when a new tab is tapped
      showUnselectedLabels: true,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
        switch (index) {
          case 0:
            break;
          case 1:
            break;
          case 2:
            break;
        }
      },
      type: BottomNavigationBarType.fixed,
      items: [

        BottomNavigationBarItem(
            icon: Icon(IconComponent.nav_home,
                color: PaletteColor.grey60, size: SpacingDimens.spacing20),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(IconComponent.nav_list,
                color: PaletteColor.grey60, size: SpacingDimens.spacing20),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(IconComponent.history_time,
                color: PaletteColor.grey60, size: SpacingDimens.spacing20),
            label: ""),
      ],
    );
  }

  Widget _buttonComplain() {
    return Container(
      margin: EdgeInsets.only(left: SpacingDimens.spacing24,right: SpacingDimens.spacing24,bottom: SpacingDimens.spacing32),
      child: Align(
        alignment: Alignment.bottomCenter,
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
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: SpacingDimens.spacing16),
                  child: Text(
                    'Complain',
                    style: TypographyStyle.mini.merge(
                      TextStyle(
                          color: PaletteColor.primarybg,
                          fontWeight: FontWeight.w500),
                    ),
                      textAlign: TextAlign.center
                  ),
                ),
              ),
              SvgPicture.asset('assets/Icons/arrow_narrow.svg'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    var appBar = AppBarTest3(
      ctx: context,
      title: "FINANSIAL",
      colorPrima: PaletteColor.test3_primary_blue,
      colorSecond: PaletteColor.test3_primary_blue80,
      icon1: IconComponent.chart,
      icon2: IconComponent.notification_bold,
    );

    return Scaffold(
      backgroundColor: PaletteColor.test3_primarybg,
      appBar: appBar,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                  top: SpacingDimens.spacing12,
                  left: SpacingDimens.spacing24,
                  right: SpacingDimens.spacing24),
              child: Column(
                children: [
                  BonusSection(),
                  SizedBox(
                    height: SpacingDimens.spacing16,
                  ),
                  RebateSection(),
                  HistoryRebateSection(),
                ],
              ),
            ),
          ),
          _buttonComplain()
        ],
      ),
      bottomNavigationBar: _bottomNav(),
    );
  }
}
