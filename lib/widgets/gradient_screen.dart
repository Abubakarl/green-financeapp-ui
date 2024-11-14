import 'package:flutter/material.dart';

import '../global/theme.dart';

class GradientScreen extends StatelessWidget {
  const GradientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: GlobalTheme.screenGradient,
      ),
    );
  }
}
