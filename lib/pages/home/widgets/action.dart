import 'package:flutter/material.dart';
import 'package:opay/database/variable.dart';
import 'package:opay/widgets/container.dart';

class ActionWidget extends StatelessWidget {
  const ActionWidget({
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.location_history_rounded,
                  color: iconColor,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'To Opay',
              ),
            ],
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.account_balance,
                  color: iconColor,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'To Bank',
              ),
            ],
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.zoom_out_map,
                  color: iconColor,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Withdraw',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
