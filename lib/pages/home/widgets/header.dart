import 'package:flutter/material.dart';
import 'package:opay/widgets/container.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    super.key,
    required this.userName,
  });
  final String userName;

  @override
  Widget build(BuildContext context) {
    return ConatinerWidget(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              size: 40,
            ),
            onPressed: () {
              //
            },
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
          const Spacer(),
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
    );
  }
}
