import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/ui/common/palette.dart';

extension AppContext on BuildContext {
  ThemeData get _theme => Theme.of(this);
  Palette get palette => _theme.extension<Palette>()!;
}
