// ignore: file_names
import 'package:flutter/material.dart';

class AppBarView {
  PreferredSizeWidget? appBar(BuildContext context,
      {double elevation = 2.0,
      String? title,
      bool centerTitle = true,
      List<Widget>? actions}) {
    return AppBar(
      elevation: elevation,
      centerTitle: centerTitle,
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      flexibleSpace: Container(
        decoration: const BoxDecoration(),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title ?? "",
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
      actions: actions,
    );
  }
}
