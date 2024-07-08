import 'package:dispatcher/design/dialog/error_dialog.dart';
import 'package:dispatcher/design/dimensions.dart';
import 'package:dispatcher/design/utils/size_utils.dart';
import 'package:dispatcher/design/widgets/accent_button.dart';
import 'package:dispatcher/pages/vehicle/driver/driver_page.dart';
import 'package:dispatcher/pages/vehicle/vehicle_item.dart';
import 'package:dispatcher/pages/vehicle_state/vehicle_state_page.dart';
import 'package:flutter/material.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(context),
        Align(
          alignment: Alignment.bottomCenter,
          child: _updateButton(context),
        ),
      ],
    );
  }

  Widget _list(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(
        right: padding16,
        top: padding16,
        left: padding16,
        bottom: getListBottomPadding(context),
      ),
      itemCount: 15,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: height8);
      },
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        return VehicleItem(
          onTap: () async{
            await _showDriverPage(context);
          }, onStateTap: () async{ 
            await _showVehicleStatePage(context);
           },
        );
      },
    );
  }

  Widget _updateButton(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(
        bottom: padding8,
        left: padding16,
        right: padding16,
      ),
      child: AccentButton(
          title: 'Update',
          onTap: () {
            _showErrorDialog(context);
          }),
    ));
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const ErrorDialog(
              desription: 'Server is unavailable. Please try again later.');
        });
  }

  Future<void> _showDriverPage(BuildContext context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DriverPage();
    }));
  }
    Future<void> _showVehicleStatePage(BuildContext context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return VehicleStatePage();
    }));
  }
}
