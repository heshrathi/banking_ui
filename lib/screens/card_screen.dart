import 'package:banking_ui/constants.dart';
import 'package:banking_ui/widgets/feature_card.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0,
          bottom: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                size: 26.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/card.png',
                ),
                Positioned(
                  bottom: 20.0,
                  left: 20.0,
                  child: Text(
                    'Daniel Shoman',
                    style: kHeadingStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              'DEBIT CARD',
              style: kUpperCase,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              'Exclusion edition',
              style: kHeadingStyle.copyWith(
                fontSize: 24.0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const FeatureCard(
              title: 'Premium service',
              iconPath: 'assets/images/rocket.svg',
              color: kOrange,
            ),
            const SizedBox(
              height: 15.0,
            ),
            const FeatureCard(
              title: '2% for daily purchases',
              iconPath: 'assets/images/piggy.svg',
              color: kPink,
            ),
            const SizedBox(
              height: 15.0,
            ),
            const FeatureCard(
              title: 'Upto 10% while travelling',
              iconPath: 'assets/images/airplane.svg',
              color: kBlue,
            ),
            const SizedBox(
              height: 15.0,
            ),
            const FeatureCard(
              title: '4% annual interest',
              iconPath: 'assets/images/interest.svg',
              color: kGreen,
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).primaryColor,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Apply for Card',
                      style: kUpperCase.copyWith(
                          fontSize: 12.0, color: Colors.white),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
