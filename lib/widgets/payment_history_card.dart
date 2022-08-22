import 'package:banking_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentHistoryCard extends StatelessWidget {
  const PaymentHistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.0),
        // color: Color.fromARGB(255, 255, 252, 234),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'TODAY',
            style: kUpperCase,
          ),
          const SizedBox(
            height: 2.0,
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0.0),
            leading: SvgPicture.asset(
              'assets/images/atnt.svg',
              width: 30.0,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            title: const Text(
              'AT & T',
              style: kHeadingStyle,
            ),
            subtitle: const Text(
              'Unlimited family plan',
              style: TextStyle(fontSize: 11.0),
            ),
            trailing: Text(
              '- \$ 99',
              style: kMoneyStyle.copyWith(
                fontSize: 14.0,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'YESTERDAY',
            style: kUpperCase,
          ),
          const SizedBox(
            height: 2.0,
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0.0),
            leading: SvgPicture.asset(
              'assets/images/blizzard.svg',
              width: 30.0,
              fit: BoxFit.cover,
            ),
            title: const Text(
              'Blizzar',
              style: kHeadingStyle,
            ),
            subtitle: const Text(
              'Entertainment',
              style: TextStyle(fontSize: 11.0),
            ),
            trailing: Text(
              '- \$ 25',
              style: kMoneyStyle.copyWith(
                fontSize: 14.0,
              ),
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0.0),
            leading: SvgPicture.asset(
              'assets/images/d&b.svg',
              width: 30.0,
              fit: BoxFit.cover,
            ),
            title: const Text(
              'Dev & Black',
              style: kHeadingStyle,
            ),
            subtitle: const Text(
              'Restaurents',
              style: TextStyle(fontSize: 11.0),
            ),
            trailing: Text(
              '- \$ 86',
              style: kMoneyStyle.copyWith(
                fontSize: 14.0,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}
