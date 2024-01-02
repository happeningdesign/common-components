import 'package:flutter/material.dart';

class PlusMinusWidget extends StatelessWidget {
  const PlusMinusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.remove,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
    );
  }
}
