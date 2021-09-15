
import 'package:flutter/cupertino.dart';

class BaseCls {
  BaseCls(){
    print('BaseCls create');
    initState();
  }

  @mustCallSuper
  initState() {
    print('BaseCls init');
  }
}