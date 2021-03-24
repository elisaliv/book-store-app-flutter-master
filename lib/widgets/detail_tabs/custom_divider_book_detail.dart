import 'package:flutter/material.dart';

// Adapted from custom_divider.dart (there is surely a better way to implement
// this "overload")
class CustomDividerBookDetail extends StatelessWidget {
  const CustomDividerBookDetail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Divider(),
    );
  }
}
