import 'package:flutter/cupertino.dart';
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
          case 3:
            break;
          case 4:
            break;
        }
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(IconComponent.timeline,
                color: PaletteColor.grey60, size: SpacingDimens.spacing20),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(IconComponent.nav_transaction,
                color: PaletteColor.grey60, size: SpacingDimens.spacing20),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(IconComponent.direct_message,
                color: PaletteColor.grey60, size: SpacingDimens.spacing20),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(IconComponent.chart,
                color: PaletteColor.grey60, size: SpacingDimens.spacing20),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(IconComponent.helm,
                color: PaletteColor.grey60, size: SpacingDimens.spacing20),
            label: ""),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    var appBar = AppBarBack(
      ctx: context,
      title: "Portofolio Vendor",
      icon: IconComponent.notification_bold,
      colorPrima: PaletteColor.black,
      colorSecond: PaletteColor.black,
    );
    return Scaffold(
      backgroundColor: PaletteColor.primarybg,
      appBar: appBar,
      body:  SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: SpacingDimens.spacing20,left: SpacingDimens.spacing20,right: SpacingDimens.spacing20),
          child: Column(
            children: [
              ProfileSection(),
              SizedBox(height: SpacingDimens.spacing20,),
              ContentSection()
            ],
          ),
        ),
    ),
      bottomNavigationBar: _bottomNav(),


    );
  }
}
