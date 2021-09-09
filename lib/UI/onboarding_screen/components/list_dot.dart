import 'package:flutter/material.dart';

class ListDot extends StatelessWidget {
  const ListDot({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 4; i++)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: i == index
                    ? Color(0xFF347AF0)
                    : Color(0xFFEDF1F9),
              ),
            ),
          ),
      ],
    );
  }
}
