
import 'package:flutter/cupertino.dart';

class YellowBird extends StatefulWidget {
  const YellowBird({ Key? key }) : super(key: key);

  @override
  State<YellowBird> createState() => _YellowBirdState();
}

class _YellowBirdState extends State<YellowBird> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 10,
        height: 10,
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: const Color(0xFFFFE306)
    );
  }
}