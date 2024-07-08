import 'package:dispatcher/design/dimensions.dart';
import 'package:flutter/material.dart';

double getListBottomPadding(BuildContext context) {
  final safeBottomPadding = MediaQuery.of(context).padding.bottom;
  return (safeBottomPadding + height8) * 2 + height40;
}
