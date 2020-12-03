import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChangePage {
  static changePage(BuildContext context, StatefulWidget classes) {
    Navigator.push(context, MaterialPageRoute(
      builder: (_){
        return classes;
      })
    );
  } 
}