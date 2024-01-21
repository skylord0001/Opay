import 'package:flutter/material.dart';
import 'package:opay/widgets/container.dart';

class HomeActionWidget extends StatelessWidget {
  const HomeActionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConatinerWidget(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: IconButton(
                  onPressed: () {
                    //
                  },
                  icon: Icon(Icons.add_a_photo),
                ),
              ),
              Text('data'),
            ],
          )
        ],
      ),
    );
  }
}
