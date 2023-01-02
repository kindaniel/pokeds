import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_design_system/widgets/poke_app_bar.dart';
import 'package:poke_design_system/widgets/poke_card.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final _plugins = initializePlugins(
  contentsSidePanel: false,
  knobsSidePanel: false,
);

class PokeDsApp extends StatelessWidget {
  const PokeDsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PokeDS',
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
          return MaterialPageRoute(
            builder: (_) => Storybook(
              initialStory: 'Widgets',
              plugins: _plugins,
              stories: [
                Story(
                  name: 'Poke Card',
                  description: 'Simple Poke Card Widget.',
                  builder: (context) => const Center(
                      child: PokeCard(
                    pokemonImage:
                        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/25.png',
                    pokemonName: 'Pikachu',
                  )),
                ),
                Story(
                  name: 'App Bar',
                  description: 'PokeDex App Bar',
                  builder: (context) => const Center(child: PokeAppBar()),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
