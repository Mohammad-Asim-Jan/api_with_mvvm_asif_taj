import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(
      backgroundColor: Colors.purple,
      msg: message,
      gravity: ToastGravity.SNACKBAR,
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  static flushbarErrorMessage(BuildContext context, String message) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.bounceInOut,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(15),
          reverseAnimationCurve: Curves.linear,
          positionOffset: 20,
          flushbarPosition: FlushbarPosition.TOP,
          icon: const Icon(Icons.error),
          message: message,
          backgroundColor: Colors.red.shade400,
          duration: const Duration(seconds: 3),
          title: 'Error:',
        )..show(context));
  }

  static snackBar(BuildContext context, String message) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.black,
    ));
  }

  static void fieldFocusNode (BuildContext context, FocusNode currentNode, FocusNode nextNode) {
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }
}
