import 'dart:async';
import 'package:flutter/material.dart';
import 'package:opay/database/variable.dart';
import 'package:opay/widgets/container.dart';

class HomeBalanceWidget extends StatefulWidget {
  const HomeBalanceWidget({
    super.key,
    required userName,
    required this.accountBalance,
  });
  final String accountBalance;

  @override
  State<HomeBalanceWidget> createState() => _HomeBalanceWidgetState();
}

class _HomeBalanceWidgetState extends State<HomeBalanceWidget> {
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
          padding: 14.0,
          color: mainColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
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
                  SizedBox(width: 8),
                  Text(
                    '>',
                    style: TextStyle(fontSize: 16, color: Colors.white),
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
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: snapshot.hasData
                                ? snapshot.data
                                : widget.accountBalance,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
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
                    child: const Text(
                      '+ Add Money',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
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
