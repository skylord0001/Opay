import 'package:flutter/material.dart';

class Actions extends StatelessWidget {
  const Actions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildColumn(Icons.add, 'Add Money', Colors.green),
              _buildColumn(Icons.add, 'Add Money', Colors.green),
              _buildColumn(Icons.send, 'Transfer', Colors.green),
              _buildColumn(Icons.arrow_downward, 'Withdraw', Colors.green),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildColumn(Icons.add, 'Add Money', Colors.green),
              _buildColumn(Icons.add, 'Add Money', Colors.green),
              _buildColumn(Icons.send, 'Transfer', Colors.green),
              _buildColumn(Icons.arrow_downward, 'Withdraw', Colors.green),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildColumn(IconData icon, String label, Color backgroundColor) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ColoredIconWidget(
            icon: icon,
            backgroundColor: backgroundColor,
            iconColor: Colors.white,
          ),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.black),
        ),
      ],
    );
  }
}

class ColoredIconWidget extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  const ColoredIconWidget({
    super.key,
    required this.icon,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32, // You can adjust the size as needed
      height: 32, // You can adjust the size as needed
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: iconColor),
    );
  }
}
