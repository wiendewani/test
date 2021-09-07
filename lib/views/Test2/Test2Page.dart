import 'package:flutter/material.dart';
import 'package:ordo/component/AppBar/AppBarBack.dart';
import 'package:ordo/theme/IconComponent.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/views/Test2/component/ContentSection.dart';
import 'package:ordo/views/Test2/component/ProfileSection.dart';
class Test2Page extends StatefulWidget {

  @override
  _Test2PageState createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {

  int currentTab = 0;

  void _onCurrentTab(int index) {
    setState(() {
      currentTab = index;
    });
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
      BottomNavigationBarItem(
          icon: Icon(IconComponent.nav_notification,
              color: PaletteColor.grey60, size: SpacingDimens.spacing20),
          label: ""),
      BottomNavigationBarItem(
          icon: Icon(IconComponent.nav_profile,
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
      appBar: appBar,
      body:  SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: SpacingDimens.spacing20,left: SpacingDimens.spacing20,right: SpacingDimens.spacing20),
          child: Column(
            children: [
              ProfileSection(),
              ContentSection()
            ],
          ),
        ),
    ),
      bottomNavigationBar: _bottomNavBar,


    );
  }
}
