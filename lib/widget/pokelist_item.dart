import 'package:flutter/material.dart';
import 'package:flutter_pokedex_ea/constants/constants.dart';
import 'package:flutter_pokedex_ea/constants/ui_helper.dart';
import 'package:flutter_pokedex_ea/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.w),
      ),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red.shade200,
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pokemon.name ?? 'N/A',
              style: Constans.getPokemonNameTextStyle(),
            ),
            Chip(label: Text(pokemon.type![0]))
          ],
        ),
      ),
    );
  }
}
