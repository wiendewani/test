import 'package:flutter/material.dart';
import 'package:ordo/component/AppBar/AppBarBack.dart';
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
  int currentTab = 0;

  void _onCurrentTab(int index) {
    setState(() {
      currentTab = index;
    });
  }

  Widget _buttonComplain() {
    return Positioned(
      bottom: -30,
      left: 0,
      right: 0,
      child: Align(
        alignment: Alignment.bottomCenter,
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
              TextStyle(color: PaletteColor.primarybg, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(
            IconComponent.nav_list,
            color: PaletteColor.grey60,
            size: SpacingDimens.spacing20,
          ),
          label: ""),
      BottomNavigationBarItem(
          icon: Icon(IconComponent.nav_transaction,
              color: PaletteColor.grey60, size: SpacingDimens.spacing20),
          label: ""),
      BottomNavigationBarItem(
          icon: Icon(IconComponent.nav_home,
              color: PaletteColor.grey60, size: SpacingDimens.spacing20),
          label: ""),
    ];

    final _bottomNavBar = BottomNavigationBar(
        items: _bottomNavBarItems,
        currentIndex: currentTab,
        onTap: _onCurrentTab);

    var appBar = AppBarBack(
      ctx: context,
      title: "Portofolio Vendor",
    );

    return Scaffold(
      backgroundColor: PaletteColor.test3_primarybg,
      appBar: appBar,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
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
            _buttonComplain()
          ],
        ),
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
