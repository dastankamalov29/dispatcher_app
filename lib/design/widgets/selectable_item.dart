import 'package:dispatcher/design/colors.dart';
import 'package:dispatcher/design/dimensions.dart';
import 'package:dispatcher/design/images.dart';
import 'package:dispatcher/design/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectableItem extends StatelessWidget {
  final SvgPicture image;
  final double leftPadding;
  final Function() onTap;
  final String title;
  final bool isSelected;
  const SelectableItem(
      {super.key,
      required this.onTap,
      required this.title,
      required this.isSelected, required this.image, required this.leftPadding});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height64,
      child: Card(
        margin: EdgeInsets.zero,
        color: surfaceColor,
        elevation: elevation006,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius8),
        ),
        child: InkWell(
          splashColor: splashColor,
          borderRadius: BorderRadius.circular(radius8),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.only(
              left: leftPadding,
              right: padding16,
            ),
            child: Row(
              children: <Widget>[
                image,
                SizedBox(width: width16),
                Expanded(
                  child: Text(
                    title,
                    style: body2TextStyle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: width16),
                if (isSelected) checkImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
