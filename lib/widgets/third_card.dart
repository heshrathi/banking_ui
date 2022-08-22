import 'package:banking_ui/constants.dart';
import 'package:flutter/material.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kGreen,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.euro_rounded,
            size: 24,
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Euro',
                          style: kUpperCase,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '€ 6 33 103',
                          style: kMoneyStyle,
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 30.0,
                      color: Colors.black54,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
