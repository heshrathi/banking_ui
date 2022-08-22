import 'package:banking_ui/constants.dart';
import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kOrange,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.attach_money,
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
                      children: const [
                        Text(
                          'US Dollar',
                          style: kUpperCase,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '\$ 22 582',
                          style: kMoneyStyle,
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 30.0,
                      color: Colors.black54,
                    )
                  ],
                ),
                const Divider(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'AVAILABLE THIS MONTH',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      '\$ 12 980',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: double.infinity,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  'Spent \$ 10 984',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black54,
                  ),
                ),
                const Divider(
                  height: 25.0,
                ),
                Row(
                  children: const [
                    Text(
                      'Manage',
                      style: kHeadingStyle,
                    ),
                    Spacer(),
                    Icon(
                      Icons.edit,
                    ),
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
