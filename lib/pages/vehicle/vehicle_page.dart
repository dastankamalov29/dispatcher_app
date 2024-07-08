import 'package:dispatcher/design/colors.dart';
import 'package:dispatcher/design/dimensions.dart';
import 'package:dispatcher/design/styles.dart';
import 'package:dispatcher/pages/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: surfaceColor,
        elevation: elevation0,
        title: Text(
          'Dispatcher App',
          style: primaryTextStyle
        ),
      ),
      body: Container(
        color: backgroundColor,
        child: const VehicleList(),
      ),
    );
  }
}
