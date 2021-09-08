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
            icon: Icon(IconComponent.nav_list,
                color: PaletteColor.grey60, size: SpacingDimens.spacing20),
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
      ],
    );
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


    var appBar = AppBarBack(
      ctx: context,
      title: "LACAK PESANAN",
      icon: IconComponent.shopping_cart,
      colorPrima: PaletteColor.test1_primary,
      colorSecond: PaletteColor.test1_primary80,
    );

    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: SpacingDimens.spacing72, top: SpacingDimens.spacing80),
            child: Image.asset(
              'assets/Images/tracking.png',
              height: 250,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            // child: Image.asset('assets/Images/map.png'),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/Images/map.png'),
                fit: BoxFit.fill,
              ),

            ),
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
                          height: SpacingDimens.spacing40,
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
      bottomNavigationBar: _bottomNav(),
    );
  }
}
