import 'package:flutter/widgets.dart';

class ContextUtils {
  /// Hides keyboard by finding the primary focused [FocusNode] or
  /// [FocusScopeNode] then unfocusing it. Take note that this triggers
  /// [State.didChangeDependencies] on specific UIs which holds the node.
  ///
  /// The context parameter is additional layer of check to ensure it is not
  /// calling FocusManager on places where context does not exist such as
  /// tests.
  static void hideKeyboard(context) {
    if (context == null) return;

    FocusManager.instance.primaryFocus?.unfocus();
  }
}
