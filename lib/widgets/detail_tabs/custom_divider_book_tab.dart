import 'package:flutter/material.dart';

// Adapted from custom_divider.dart (there is surely a better way to implement
// this "overload")
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
