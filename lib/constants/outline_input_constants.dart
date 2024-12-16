import 'package:flutter/material.dart';

OutlineInputBorder inputBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.orange,
        width: 2,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(7),
      ),
    );
  }

