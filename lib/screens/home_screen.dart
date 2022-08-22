import 'package:banking_ui/animations/animations.dart';
import 'package:banking_ui/constants.dart';
import 'package:banking_ui/screens/card_screen.dart';
import 'package:banking_ui/widgets/bottom_nav_bar.dart';
import 'package:banking_ui/widgets/custom_app_bar.dart';
import 'package:banking_ui/widgets/first_card.dart';
import 'package:banking_ui/widgets/payment_history_card.dart';
import 'package:banking_ui/widgets/second_card.dart';
import 'package:banking_ui/widgets/third_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 50.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                child: const CardScreen(),
                                type: PageTransitionType.fromBottom),
                          );
                        },
                        child: const CustomAppBar()),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Accounts',
                      style: kHeadingStyle,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const FadeAnimation(intervalStart: 0.3, child: FirstCard()),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const FadeAnimation(
                      intervalStart: 0.3,
                      child: SecondCard(),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const FadeAnimation(
                      intervalStart: 0.3,
                      child: ThirdCard(),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Recent Payments',
                      style: kHeadingStyle,
                    ),
                    const SlideAnimation(
                      begin: Offset(0, 100),
                      child: PaymentHistoryCard(),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // bottom navigation bar
          const SlideAnimation(
            begin: Offset(0, 100),
            child: BottomNavBar(),
          ),
        ],
      ),
    );
  }
}
