import 'package:flutter/material.dart';
import 'package:ordo/component/AppBar/AppBarBack.dart';
import 'package:ordo/theme/IconComponent.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/views/Test1/component/OrderSection.dart';
import 'package:ordo/views/Test1/component/OrderStatusSection.dart';
import 'package:ordo/views/Test1/component/ProfileSection.dart';

class Test1Page extends StatefulWidget {
  @override
  _Test1PageState createState() => _Test1PageState();
}

class _Test1PageState extends State<Test1Page> {
  int currentTab = 0;

  void _onCurrentTab(int index) {
    setState(() {
      currentTab = index;
    });
  }

  Widget _toUp() {
    return Center(
      child: Container(
          height: SpacingDimens.spacing4,
          width: SpacingDimens.spacing88,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: PaletteColor.test1_primary,
          )),
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
      title: "Lacak Pesanan",
    );

    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: <Widget>[
          Container(
            color: PaletteColor.test1_primary,
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.25,
            minChildSize: 0.25,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                padding: EdgeInsets.only(
                    left: SpacingDimens.spacing16,
                    right: SpacingDimens.spacing16,
                    top: SpacingDimens.spacing12),
                decoration: BoxDecoration(
                  color: PaletteColor.primarybg,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(SpacingDimens.spacing24),
                    topRight: Radius.circular(SpacingDimens.spacing24),
                  ),
                ),
                child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        _toUp(),
                        ProfileSection(),
                        SizedBox(
                          height: SpacingDimens.spacing36,
                        ),
                        OrderStatusSection(),
                        SizedBox(
                          height: SpacingDimens.spacing20,
                        ),
                        OrderSection()
                      ],
                    )),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
