import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ordo/theme/SpacingDimens.dart';

class OrderStatusSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: SpacingDimens.spacing24),
      child: Row(
        children: [
          Column(
            children: [
              SvgPicture.asset('assets/Icons/clock.svg'),
              SizedBox(height: SpacingDimens.spacing16,),
              SvgPicture.asset('assets/Icons/dots.svg'),
              SizedBox(height: SpacingDimens.spacing16,),
              SvgPicture.asset('assets/Icons/destionation.svg'),


            ],
          ),
          SizedBox(width: SpacingDimens.spacing12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Status"),
              Text("Sedang mengambil barang"),
              SizedBox(height: SpacingDimens.spacing48,),
              Text("Alamat Anda"),
              Text("Taman Indah Dago No.612"),
            ],
          )
        ],
      ),
    );
  }
}
