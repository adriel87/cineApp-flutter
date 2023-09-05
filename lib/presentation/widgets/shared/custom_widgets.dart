import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50,),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Icon(Icons.movie_outlined, color: color.primary,),
              const SizedBox(width: 5,),
              Text('ZanemaPedia', style: titleStyle,),
              const Spacer(),
              IconButton(onPressed: () {
                
              }, icon: const Icon(Icons.search))
            ],
          ),
        ),
      ),

    );
  }
}