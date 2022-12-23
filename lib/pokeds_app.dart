import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_design_system/home_page.dart';
import 'package:poke_design_system/main.dart';

class PokeDsApp extends StatelessWidget {
  const PokeDsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Valeu',
        theme: ThemeData(
          iconTheme: const IconThemeData(
            color: Colors.grey,
          ),
          primarySwatch: Colors.red,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        builder: (context, widget) {
          return MediaQuery(
            ///Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (_) => HomePage());
        },
      ),
    );
  }
}
