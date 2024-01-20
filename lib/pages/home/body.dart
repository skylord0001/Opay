import 'package:flutter/material.dart';
import 'package:opay/database/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.accountBalance, this.userName});
  final accountBalance;
  final userName;
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late String userName;
  late String accountBalance;
  @override
  void initState() {
    accountBalance = widget.accountBalance;
    userName = widget.userName;
    super.initState();
  }

  Future<void> updateUser() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      //
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        title: Row(
          children: [
            const Icon(
              Icons.account_circle,
              size: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Hi,',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const TextSpan(text: ' '),
                  TextSpan(
                    text: userName.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.headset_mic_rounded,
              size: 30,
            ),
            onPressed: () {
              //
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.qr_code_scanner_sharp,
              size: 30,
            ),
            onPressed: () {
              //
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications_none_rounded,
              size: 33,
            ),
            onPressed: () {
              //
            },
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: const Text('Hello World!'),
    );
  }
}
