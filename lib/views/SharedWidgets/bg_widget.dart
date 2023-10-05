import 'package:bazzar/constant/images.dart';
import 'package:flutter/material.dart';

Container bgWidget({child}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          bgImage,
        ),
      ),
    ),
    child: child,
  );
}
