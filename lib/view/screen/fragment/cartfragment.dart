import 'package:flutter/material.dart';

class CartFragment extends StatelessWidget {
  const CartFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text("السلة"),
      )),
    );
  }
}
