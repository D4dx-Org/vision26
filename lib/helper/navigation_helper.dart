import 'package:flutter/material.dart';

void navigateTo({required BuildContext context, required Widget route}) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => route));
}

// navigate  pushandremoveuntil
void navigatePRTo({required BuildContext context, required Widget screen}) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => screen),
    (Route<dynamic> route) => false,
  );
}
