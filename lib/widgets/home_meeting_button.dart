// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:zoom_clone/utils/colors.dart';

class HomeMeetingButtom extends StatelessWidget {
  final VoidCallback onTap;
  final IconData iconData;
  
  final String label;
  const HomeMeetingButtom({
    Key? key,
    required this.onTap,
    required this.iconData,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadiusDirectional.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.06),
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Icon(iconData, color: Colors.white, size: 30),
          ),
          const SizedBox(height: 10),

          // Label
          Text(label, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
