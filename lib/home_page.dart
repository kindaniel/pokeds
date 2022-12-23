import 'package:flutter/material.dart';
import 'package:poke_design_system/widgets/poke_app_bar.dart';
import 'package:poke_design_system/widgets/poke_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: const PokeAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [PokeCard()],
        ),
      ),
    );
  }
}
