import 'package:flutter/material.dart';

class ChoosedProduct extends StatelessWidget {
  const ChoosedProduct({super.key, required this.isActive, required this.icon});
  final bool isActive;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      padding: isActive ? null : const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: isActive ? Colors.orange : Colors.grey[300],
          borderRadius: BorderRadius.circular(40.0)),
      child: icon,
    );
  }
}
