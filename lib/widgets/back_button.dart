import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewBackButton extends StatelessWidget {
  const NewBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(CupertinoIcons.chevron_back),
    );
  }
}
