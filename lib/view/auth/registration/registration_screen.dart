import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';
import 'package:notify/view/auth/registration/widgets/choose_avatar.dart';
import 'package:notify/view/auth/registration/widgets/custom_button.dart';
import 'package:notify/view/auth/registration/widgets/direct_to_dfrnt_sign_method.dart';
import 'package:notify/view/onboard/widgets/text_field.dart';
import 'package:notify/view/widgets/notify_head_text.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppThemeColors.backgroundColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      CupertinoIcons.back,
                      color: AppThemeColors.secondaryColor,
                    ),
                  ),
                  const HeadNotifyText(
                    head: 'Hey, Bud :)',
                    secondaryText: 'Welcome to Notify!',
                    padding: EdgeInsets.only(
                        left: 10, right: 30, bottom: 30, top: 30),
                  ),
                ],
              ),
              Column(
                children: const [
                  NotifyTextField(icon: Icons.person, hint: 'Username'),
                  NotifyTextField(icon: Icons.email, hint: 'email'),
                  NotifyTextField(
                    icon: CupertinoIcons.smiley,
                    hint: 'Career Status (Student, Engineer...)',
                  ),
                  NotifyTextField(
                    icon: Icons.password_rounded,
                    hint: 'password',
                    isPassword: true,
                  ),
                ],
              ),
              const ChooseAvatar(),
              const SizedBox(height: 10),
              Column(
                children: const [
                  CustomButton(),
                  SizedBox(height: 10),
                  DirectToDeferentSignMethod()
                ],
              ),
              const SizedBox(),
            ],
          ),
        ));
  }
}
