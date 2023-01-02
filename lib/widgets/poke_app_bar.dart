import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_design_system/theme/pokeds_colors.dart';

class PokeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PokeAppBar({Key? key, required this.title, required this.image})
      : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xffF7F7F7),
        iconTheme: IconThemeData(color: PokedsColors.primaryColor),
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              image,
              height: 40.r,
              color: PokedsColors.primaryColor,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              title,
              style: GoogleFonts.lato(
                color: PokedsColors.primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
