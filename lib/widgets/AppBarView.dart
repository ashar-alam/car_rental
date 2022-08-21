import 'package:flutter/material.dart';

class AppBarView {
  PreferredSizeWidget? appBar(BuildContext context,
      {double elevation = 2.0,
      bool centerTitle = true,
      List<Widget>? actions}) {
    return AppBar(
      elevation: elevation,
      centerTitle: centerTitle,
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(
          color: Colors.white),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            ),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
        ],
      ),
      actions: actions,
    );
  }
}
