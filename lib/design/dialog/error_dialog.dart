import 'package:dispatcher/design/dimensions.dart';
import 'package:dispatcher/design/styles.dart';
import 'package:dispatcher/design/widgets/accent_button.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String desription;
  const ErrorDialog({super.key, required this.desription});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius8),
      ),
      child: Padding(
        padding:  EdgeInsets.all(padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Ups...',
              style: head1TextStyle
            ),

            SizedBox(height: height8),

            Text(
              desription,
              style: body1TextStyle
            ),
            SizedBox(height: height20),
            Center(
              child: AccentButton(
                title: 'Ok',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
