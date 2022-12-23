import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeCard extends StatelessWidget {
  const PokeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff74CB48),
        ),
        borderRadius: BorderRadius.circular(8.0.r),
      ),
      height: 112.h,
      width: 104.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 8.0.w),
              child: Text(
                '#001',
                style:
                    TextStyle(color: const Color(0xff74CB48), fontSize: 8.sp),
                textAlign: TextAlign.end,
              ),
            ),
          ),
          Image.asset(
            'assets/images/bulbasaur.png',
            height: 72.r,
            width: 72.r,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(8.r),
                bottomLeft: Radius.circular(8.r),
              ),
              color: const Color(
                0xff74CB48,
              ),
            ),
            height: 24.h,
            child: const Center(
              child: Text(
                'Bulbasaur',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
