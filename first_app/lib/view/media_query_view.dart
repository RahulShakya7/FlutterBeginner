import 'package:flutter/material.dart';

import '../common/show_my_message.dart';

class MediaQueryView extends StatefulWidget {
  const MediaQueryView({super.key});

  @override
  State<MediaQueryView> createState() => _MediaQueryViewState();
}

class _MediaQueryViewState extends State<MediaQueryView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Media Query'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                // height: 500,
                width: width,
                color: Colors.blue,
                child: ElevatedButton(
                  onPressed: () {
                    showmessage(context, "wow");
                  },
                  child: const Text("Click Me"),
                ),
              ),
            ),
            Expanded(
              // fit: FlexFit.tight,
              child: Container(
                // height: 10,
                width: width,
                color: Colors.cyan,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Hello World 2"),
                      duration: Duration(seconds: 1),
                    ));
                  },
                  style: const ButtonStyle(),
                  child: const Text("Click Me"),
                ),
              ),
            ),
            Container(
              height: height / 3,
              width: width,
              color: Colors.lime,
              child: const Text("Again"),
            )
          ],
        ),
      ),
    );
  }
}
