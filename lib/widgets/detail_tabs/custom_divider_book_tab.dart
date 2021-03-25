import 'package:flutter/material.dart';

// Tabs 2 and 3: custom divider with vertical padding only, adapted from 
// custom_divider.dart

class CustomDividerBookTab extends StatelessWidget {
  final verticalPadding;
  CustomDividerBookTab({this.verticalPadding = 8.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      child: Divider(),
    );
  }
}
