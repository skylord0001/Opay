import 'package:flutter/material.dart';
import 'package:opay/pages/home/widgets/balance.dart';
import 'package:opay/pages/home/widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.accountBalance,
    required this.userName,
  });
  final String accountBalance;
  final String userName;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          color: const Color.fromARGB(255, 240, 240, 240),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomeHeaderWidget(userName: widget.userName),
            const SizedBox(height: 15),
            HomeBalanceWidget(
              accountBalance: widget.accountBalance,
              userName: widget.userName,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
