import 'package:dispatcher/design/colors.dart';
import 'package:dispatcher/design/dimensions.dart';
import 'package:dispatcher/design/styles.dart';
import 'package:dispatcher/pages/vehicle/driver/driver_list.dart';
import 'package:flutter/material.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: surfaceColor,
        elevation: elevation0,
        title: Text('Select Driver', style: primaryTextStyle),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: backgroundColor,
        child: const DriverList(),
      ),
    );
  }
}
