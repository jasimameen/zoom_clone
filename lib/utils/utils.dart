// SnackBar
import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/navigation.dart';

void showSnackBar(String text) {
  Navigation.scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
    content: Text(text),
    padding: const EdgeInsets.all(5),
    elevation: 8,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  ));
}
