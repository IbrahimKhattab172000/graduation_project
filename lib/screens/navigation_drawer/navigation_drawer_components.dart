import 'package:flutter/material.dart';

Widget drawerTile({
  required BuildContext context,
  required IconData iconData,
  required String text,
  required GestureTapCallback onTap,
  Color? titleColor,
}) =>
    ListTile(
      leading: Icon(
        iconData,
        color: Colors.white,
      ),
      title: Text(text,
          style: TextStyle(
            color: titleColor ?? Colors.white,
          )),
    );
