import 'package:flutter/material.dart';

class MaintananceRed extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      color: Colors.red,
      child: const Center(
        child: Text('Page under Maintanence',
            style: TextStyle(fontSize: 32, color: Colors.white)),
      ));
}
