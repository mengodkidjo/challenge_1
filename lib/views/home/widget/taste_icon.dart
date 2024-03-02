import 'package:challenge_1/style/ressources.dart';
import 'package:challenge_1/style/vertical_space.dart';
import 'package:flutter/material.dart';

class TasteIcon extends StatelessWidget {
  const TasteIcon(
      {super.key,
      required this.title,
      required this.icon,
      required this.isActive});
  final String title;
  final Widget icon;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Column(
      children: [
        Container(
            width: isActive ? 48 : 40,
            height: isActive ? 48 : 40,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: isActive ? Colors.orange[100] : Colors.grey[300],
                borderRadius: BorderRadius.circular(40)),
            child: icon),
        VerticalSpace.vSpace8,
        Text(
          title,
          style: TextStyle(
              color: isActive ? Colors.brown : Colors.grey,
              fontSize: 13.0,
              fontWeight: FontWeight.w600),
        )
      ],
    ));
  }
}
