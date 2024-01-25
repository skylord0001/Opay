import 'package:flutter/material.dart';
import 'package:opay/database/variable.dart';
import 'package:opay/widgets/container.dart';

class ActionsWidget extends StatelessWidget {
  const ActionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor = mainColor;
    Color backgroundColor = lightMainColor;
    return ConatinerWidget(
      paddingExtSides: 14.0,
      paddingIntTopDown: 14.0,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.network_cell,
                      color: iconColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Airtime',
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.network_wifi_sharp,
                      color: iconColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Data',
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.sentiment_very_dissatisfied_sharp,
                      color: iconColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Betting',
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.tv,
                      color: iconColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'TV',
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.wallet_giftcard,
                      color: iconColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'OWealth',
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.polymer_rounded,
                      color: iconColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Loan',
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.baby_changing_station,
                      color: iconColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Play4aChild',
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.interests,
                      color: iconColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'More',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
