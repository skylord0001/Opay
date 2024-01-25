import 'package:flutter/material.dart';
import 'package:opay/pages/home/widgets/action.dart';
import 'package:opay/pages/home/widgets/actions.dart';
import 'package:opay/pages/home/widgets/ads.dart';
import 'package:opay/pages/home/widgets/others_recommend.dart';
import 'package:opay/pages/home/widgets/recommend.dart';
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
        preferredSize: const Size.fromHeight(56.0),
        child: HeaderWidget(userName: widget.userName),
      ),
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            BalanceWidget(
              accountBalance: widget.accountBalance,
              userName: widget.userName,
            ),
            const SizedBox(height: 10),
            const ActionWidget(),
            const SizedBox(height: 10),
            const RecommendWidget(),
            const SizedBox(height: 10),
            const ActionsWidget(),
            const SizedBox(height: 10),
            const AdsWidget(),
            const SizedBox(height: 10),
            const OtherRecommend(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
