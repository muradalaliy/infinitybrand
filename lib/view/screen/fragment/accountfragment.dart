import 'package:flutter/material.dart';

class AccountFragment extends StatelessWidget {
  const AccountFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text("الحساب"),
      )),
    );
  }
}
