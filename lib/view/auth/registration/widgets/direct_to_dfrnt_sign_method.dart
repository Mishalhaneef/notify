import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';

class DirectToDeferentSignMethod extends StatelessWidget {
  const DirectToDeferentSignMethod({
    Key? key,
    this.isLogin = false,
  }) : super(key: key);

  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isLogin ? 'New Here? ' : 'already have account? ',
          style: const TextStyle(color: AppThemeColors.hintColor),
        ),
        Text(
          isLogin ? 'Register' : 'Login',
          style:
              const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
