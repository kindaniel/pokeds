import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_design_system/theme/pokeds_colors.dart';

class PokeCard extends StatelessWidget {
  const PokeCard(
      {super.key, required this.pokemonName, required this.pokemonImage});

  final String pokemonName;
  final String pokemonImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: PokedsColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(8.0.r),
      ),
      height: 129.h,
      width: 114.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Align(
          //   alignment: Alignment.centerRight,
          //   child: Padding(
          //     padding: EdgeInsets.only(right: 8.0.w),
          //     child: Text(
          //       '#001',
          //       style:
          //           TextStyle(color: PokedsColors.primaryColor, fontSize: 8.sp),
          //       textAlign: TextAlign.end,
          //     ),
          //   ),
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(pokemonImage),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8.r),
                  bottomLeft: Radius.circular(8.r),
                ),
                color: PokedsColors.primaryColor),
            height: 41.h,
            child: Center(
              child: Text(
                pokemonName,
                style: TextStyle(color: Colors.white, fontSize: 10.sp),
              ),
            ),
          )
        ],
      ),
    );
  }
}
