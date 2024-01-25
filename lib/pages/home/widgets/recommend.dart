import 'package:flutter/material.dart';
import 'package:opay/widgets/container.dart';

class RecommendWidget extends StatelessWidget {
  const RecommendWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConatinerWidget(
      paddingExtSides: 14.0,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: IconButton(
              onPressed: () {
                //
              },
              icon: const Icon(
                Icons.cabin,
                size: 30,
              ),
            ),
          ),
          Expanded(
            flex: 14,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 3),
                      child: Text(
                        'Upgrade Account Limit',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 22,
                      height: 20,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        color: Color.fromARGB(172, 202, 202, 202),
                      ),
                      child: Center(
                        child: FittedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Text(
                              String.fromCharCode(
                                  Icons.close_rounded.codePoint),
                              style: TextStyle(
                                inherit: false,
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: Icons.close_rounded.fontFamily,
                                package: Icons.close_rounded.fontPackage,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 12, right: 10),
                  child: Text(
                    'Complete information to Upgrade the Level & the Life',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11.5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
