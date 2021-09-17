import 'package:flutter/material.dart';
import 'package:flutter_three_tree_demo/component/bird.dart';
import 'package:flutter_three_tree_demo/component/my_text.dart';
import 'package:flutter_three_tree_demo/component/yellow_bird.dart';
import 'package:flutter_three_tree_demo/mixin_test/imp_cls.dart';

void main() {
  runApp(RichText(
    textDirection: TextDirection.ltr,
    text: TextSpan(
      text: 'Hello World'
    ),
  ));

  // runApp(RichText(
  //   textDirection: TextDirection.ltr,
  //   text: TextSpan(
  //       text: 'Hello Flutter'
  //   ),
  // ));
  //
  // runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool change = false;

  Widget flutterContent() {
    return Row(
      textDirection: TextDirection.ltr,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(text: 'Hello Flutter'),
          textDirection: TextDirection.ltr,),
        SizedBox(width: 10,),
        RichText(
          text: TextSpan(text: ' Flutter'),
          textDirection: TextDirection.ltr,),
      ],
    );
  }

  Widget dartContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: TextDirection.ltr,
      children: [
        RichText(
          text: TextSpan(text: 'Hello Dart'),
          textDirection: TextDirection.ltr,),
        // SizedBox(width: 10,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
        Stack(
          textDirection: TextDirection.ltr,
          children: [
            Positioned(
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                color: Colors.yellow,
                child: RichText(
                  text: TextSpan(text: ' Dart'),
                  textDirection: TextDirection.ltr,),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: change
          ? flutterContent()
          : dartContent(),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              change = !change;
            });
          },
            child: Text('Switch Here', textDirection: TextDirection.ltr,))
      ],
    );
  }
}
