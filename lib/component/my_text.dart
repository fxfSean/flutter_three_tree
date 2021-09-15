
import 'package:flutter/cupertino.dart';

class MyText extends StatefulWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Text('stateful text');
  }
}
