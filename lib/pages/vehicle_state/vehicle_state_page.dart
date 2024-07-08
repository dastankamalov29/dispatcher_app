import 'package:dispatcher/design/colors.dart';
import 'package:dispatcher/design/dimensions.dart';
import 'package:dispatcher/design/styles.dart';
import 'package:dispatcher/pages/vehicle_state/vehicle_state_list.dart';
import 'package:flutter/material.dart';

class VehicleStatePage extends StatelessWidget {
  const VehicleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: surfaceColor,
        elevation: elevation0,
        title: Text('Update vehicle state', style: primaryTextStyle),
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
        child: const VehicleStateList(),
      ),
    );
  }
}
