import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customTextField({hinttext, prifixicon}) {
  return TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: prifixicon,
        prefixIconColor: Colors.black,
        hintText: hinttext),
  ).centered().box.make();
}
