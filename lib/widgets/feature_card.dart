import 'package:banking_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    Key? key,
    required this.title,
    required this.color,
    required this.iconPath,
  }) : super(key: key);

  final String title;
  final String iconPath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color,
          ),
          padding: EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            iconPath,
            width: 30.0,
            height: 30.0,
          ),
        ),
        const SizedBox(
          width: 15.0,
        ),
        Text(
          title,
          style: kHeadingStyle,
        ),
      ],
    );
  }
}
