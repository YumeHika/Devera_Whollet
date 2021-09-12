import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  final String title, content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF0D1F3C),
            fontWeight: FontWeight.w700,
            fontSize: 36,
            height: 45.0 / 36.0,
          ),
        ),
        SizedBox(height: 11),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF485068),
              fontSize: 16,
              height: 24.0 / 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
