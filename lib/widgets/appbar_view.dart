// ignore: file_names
import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class AppBarView {
  PreferredSizeWidget? appBar(BuildContext context,
      {double elevation = 2.0,
      String? title,
      bool centerTitle = true,
      List<Widget>? actions}) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60.0),
      child: AppBar(
        elevation: elevation,
        centerTitle: centerTitle,
        backgroundColor: AppStyle.white,
        iconTheme: const IconThemeData(color: AppStyle.white),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [AppStyle.primaryLight, AppStyle.primaryDark],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        title: Center(
          child: Text(
            title ?? "",
            style: const TextStyle(color: AppStyle.white, fontSize: 25),
          ),
        ),
        actions: actions,
      ),
    );
  }
}
