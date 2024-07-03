import 'package:flutter/material.dart';
import 'package:na_beauty_crm/const.dart';

AppBar customAppbar() {
  return AppBar(
    backgroundColor: backroundGrey,
    actions: [
      IconButton(
          onPressed: () {
            //TODO PROFILE
          },
          icon: const Icon(
            Icons.person,
            color: greenMain,
            size: 52,
          ))
    ],
  );
}
