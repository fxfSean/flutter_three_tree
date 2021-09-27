import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    child: Container(
      color: Colors.blue,
      child: Container(
        child: Container(
          child: ColoredBox(color: Colors.red,
          child: Text('',textDirection: TextDirection.ltr,),),
        ),
      ),
      // child: Row(
      //   textDirection: TextDirection.ltr,
      //   children: [
      //     Container(child: Image.network('https://upload.jianshu.io/users/upload_avatars/24924109/326d23e9-37d1-41f2-9d99-7dfd0cd454c5?imageMogr2/auto-orient/strip|imageView2/1/w/100/h/100/format/webp')),
      //     const Text('A',textDirection: TextDirection.ltr,),
      //   ],
      // ),
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
