import 'package:banking_ui/constants.dart';
import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.currency_rupee_outlined,
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
                          'Rupee',
                          style: kUpperCase,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Rs. 1 12 782',
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
