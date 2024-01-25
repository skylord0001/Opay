import 'dart:async';
import 'package:flutter/material.dart';
import 'package:opay/database/variable.dart';
import 'package:opay/widgets/container.dart';

class BalanceWidget extends StatefulWidget {
  const BalanceWidget({
    super.key,
    required userName,
    required this.accountBalance,
  });
  final String accountBalance;

  @override
  State<BalanceWidget> createState() => _BalanceWidgetState();
}

class _BalanceWidgetState extends State<BalanceWidget> {
  @override
  void initState() {
    super.initState();
  }

  final Stream<String> _accountBalance = (() {
    late final StreamController<String> controller;
    controller = StreamController<String>(
      onListen: () async {
        await Future<void>.delayed(const Duration(seconds: 1));
        controller.add('33,933.53');
        await Future<void>.delayed(const Duration(seconds: 1));
        await controller.close();
      },
    );
    return controller.stream;
  })();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: _accountBalance,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        return ConatinerWidget(
          paddingIntSides: 14.0,
          paddingExtSides: 14.0,
          paddingIntTopDown: 14.0,
          color: mainColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.verified_user,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(width: 2),
                  Text(
                    'Available Balance',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(width: 2),
                  Icon(Icons.remove_red_eye, size: 14, color: Colors.white),
                  Spacer(),
                  Text(
                    'Transaction History',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 18,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: '₦',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: snapshot.hasData
                                ? snapshot.data
                                : widget.accountBalance,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 28,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '+ Add Money',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
