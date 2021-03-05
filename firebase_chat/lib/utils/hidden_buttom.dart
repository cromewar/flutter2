import 'package:flutter/material.dart';

bool setHiddenPasword2(bool pass) {
  if (pass == true) {
    return false;
  } else {
    return true;
  }
}

Icon getHiddenIcon(Icon icon, bool pass) {
  if (pass == true) {
    return Icon(
      Icons.visibility_off,
      color: Colors.grey,
    );
  } else {
    return Icon(
      Icons.visibility,
      color: Colors.grey,
    );
  }
}
