import 'package:flutter/material.dart';
import 'package:ordo/component/Animation/LeftToRightTransition.dart';
import 'package:ordo/theme/PaletteColor.dart';
import 'package:ordo/theme/SpacingDimens.dart';
import 'package:ordo/theme/TypographyStyle.dart';
import 'package:ordo/views/Test1/Test1Page.dart';
import 'package:ordo/views/Test2/Test2Page.dart';
import 'package:ordo/views/Test3/Test3Page.dart';

class DashboardPage extends StatelessWidget {

  Widget _buttonRoute(String title, Function() myPres) {
    return Container(
      margin: EdgeInsets.only(bottom: SpacingDimens.spacing24),
      child: ElevatedButton(
        onPressed: myPres,
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
            title,
            style: TypographyStyle.button1.merge(
                TextStyle(color: PaletteColor.primarybg, fontSize: 20.0)),
          ),
        ),
      ),
    );
  }

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
          _buttonRoute(
              "Test 1",
              (){
                Navigator.push(
                  context,
                  leftToRightTransition(
                    Test1Page(),
                  ),
                );
              }
          ),

          _buttonRoute(
              "Test 2",
                  (){
                    Navigator.push(
                      context,
                      leftToRightTransition(
                        Test2Page(),
                      ),
                    );
              }
          ),
          _buttonRoute(
              "Test 3",
                  (){
                    Navigator.push(
                      context,
                      leftToRightTransition(
                        Test3Page(),
                      ),
                    );
              }
          ),
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
          Text(name,
              style: TypographyStyle.title.merge(TextStyle(fontSize: 22.0)))
        ],
      ),
    );
  }


}
