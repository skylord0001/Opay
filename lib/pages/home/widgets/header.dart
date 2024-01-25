import 'package:flutter/material.dart';
import 'package:opay/database/variable.dart';
import 'package:opay/widgets/container.dart';

class HeaderWidgetContent extends StatelessWidget {
  const HeaderWidgetContent({
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
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(text: ' '),
                TextSpan(
                  text: userName.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 18,
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
              size: 24,
            ),
            onPressed: () {
              //
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.qr_code_scanner_sharp,
              size: 24,
            ),
            onPressed: () {
              //
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications_none_rounded,
              size: 27,
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

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWidget({
    super.key,
    required this.userName,
  });
  final String userName;

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.0,
      backgroundColor: bodyColor,
      title: const Text('My App'),
      actions: [
        Expanded(
          child: ConatinerWidget(
            margin: const EdgeInsets.only(top: 10),
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
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        text: userName.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 18,
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
                    size: 24,
                  ),
                  onPressed: () {
                    //
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.qr_code_scanner_sharp,
                    size: 24,
                  ),
                  onPressed: () {
                    //
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.notifications_none_rounded,
                    size: 27,
                  ),
                  onPressed: () {
                    //
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
