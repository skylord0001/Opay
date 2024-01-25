import 'package:flutter/material.dart';
import 'package:opay/database/variable.dart';
import 'package:opay/widgets/concave.dart';
import 'package:opay/widgets/container.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConatinerWidget(
      paddingExtSides: 14.0,
      paddingIntSides: 12.0,
      paddingIntTopDown: 12.0,
      gradient: LinearGradient(
        colors: [
          lightOtherColor,
          lightMainColor,
        ],
        stops: const [0.0, 0.25],
        begin: Alignment.topRight,
        end: Alignment.centerLeft,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text(
                'Get Your Vouchers',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(Icons.card_giftcard),
              Icon(Icons.chevron_right),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: ConCaveContainer(
                  topRight: 6.0,
                  bottomRight: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0),
                    ),
                    color: mainColor,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          children: [
                            Text(
                              "N100",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Voucher",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '',
                                style: TextStyle(
                                  color: mainColor,
                                ),
                              ),
                              Text(
                                '',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: mainColor,
                                ),
                              ),
                              Text(
                                '',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: mainColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: ConCaveContainer(
                  topLeft: 6.0,
                  bottomLeft: 6.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          flex: 7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'iLOTBet Voucher',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '2024. 01. 24-2025.01.27',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                'Purchase over N500 at Betting',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Spacer(),
                        Expanded(
                          flex: 4,
                          child: Container(
                            height: 28,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'Get it',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
