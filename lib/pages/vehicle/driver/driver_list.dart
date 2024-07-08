import 'package:dispatcher/design/colors.dart';
import 'package:dispatcher/design/dimensions.dart';
import 'package:dispatcher/design/images.dart';
import 'package:dispatcher/design/utils/size_utils.dart';
import 'package:dispatcher/design/widgets/accent_button.dart';
import 'package:dispatcher/design/widgets/selectable_item.dart';
import 'package:flutter/material.dart';

class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  int? _selectedDriver;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(),
        Align(
          alignment: Alignment.bottomCenter,
          child: _saveButton(),
        ),
      ],
    );
  }

  Widget _list() {
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
        final bool isSelected = _selectedDriver == index;
        return SelectableItem(
          onTap: () {
            setState(() {
              _selectedDriver = index;
            });
          },
          title: 'Paul',
          isSelected: isSelected, image: accountCircleImage, leftPadding: padding8,
        );
      },
    );
  }

  Widget _saveButton() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: padding8,
          left: padding16,
          right: padding16,
        ),
        child: AccentButton(
          title: 'Save',
          onTap: () {},
        ),
      ),
    );
  }
}
