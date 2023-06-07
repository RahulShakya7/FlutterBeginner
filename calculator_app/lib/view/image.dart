import 'package:flutter/material.dart';

class ImagePrintView extends StatefulWidget {
  const ImagePrintView({super.key});

  @override
  State<ImagePrintView> createState() => _ImagePrintViewState();
}

class _ImagePrintViewState extends State<ImagePrintView> {
  List<String> images = [
    "https://img.i-scmp.com/cdn-cgi/image/fit=contain,width=1098,format=auto/sites/default/files/styles/1200x800/public/d8/images/canvas/2022/12/19/16ebb244-5354-4191-80a6-ff193699e7b6_121dffc6.jpg?itok=2tkC_83Y&v=1671448704",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3zSG9pqChrhSFpDc3mSg4Q6dQhDxjzFBdmA&usqp=CAU",
    "https://images05.military.com/sites/default/files/media/equipment/military-aircraft/f-22-raptor/2014/02/f-22-raptor_009.jpg",
    "https://militarywatchmagazine.com/m/articles/2019/05/18/article_5cdff8492d1168_01614385.jpg",
    "https://hips.hearstapps.com/hmg-prod/images/speed-tgm-dw-1654631807.jpeg?crop=1.00xw:1.00xh;0,0&resize=1200:*"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Print images * 1000"),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemCount: 1000,
            itemBuilder: (context, index) {
              return SizedBox(
                child: Image(
                  image: NetworkImage(images[index % images.length]),
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
