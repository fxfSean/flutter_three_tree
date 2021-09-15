
import 'package:flutter_three_tree_demo/mixin_test/base_cls.dart';

mixin B on BaseCls {
  @override
  initState() {
    super.initState();
    print('B initState');
  }
}