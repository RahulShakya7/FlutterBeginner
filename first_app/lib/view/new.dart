// import 'package:flutter/material.dart';

// class NewView extends StatefulWidget {
//   const NewView({super.key});

//   @override
//   State<NewView> createState() => _NewViewState();
// }

// class _NewViewState extends State<NewView> {
//   Widget display(String title) {
//     return GestureDetector(
//       onDoubleTap: () {},
//       child: SizedBox(
//         height: 200,
//         width: double.infinity,
//         child: Card(
//           color: Colors.cyan,
//           child: Padding(
//             padding: const EdgeInsets.all(0),
//             child: Container(
//               height: 248,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage(
//                     "https://images6.alphacoders.com/597/597293.jpg",
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: const Align(
//                 alignment: Alignment.bottomLeft,
//                 child: Padding(
//                   padding: EdgeInsets.all(16.0),
//                   child: Icon(
//                     Icons.favorite,
//                     color: Colors.red,
//                     size: 28,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("New View"),
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//         itemCount: 5,
//         itemBuilder: (context, index) {
//           return display("Hello $index");
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class ImageItem {
//   final String title;
//   bool isVisible;

//   ImageItem({required this.title, this.isVisible = true});
// }

// class NewView extends StatefulWidget {
//   const NewView({Key? key}) : super(key: key);

//   @override
//   State<NewView> createState() => _NewViewState();
// }

// class _NewViewState extends State<NewView> {
//   List<ImageItem> imageItems = [
//     ImageItem(title: "Image 1"),
//     ImageItem(title: "Image 2"),
//     ImageItem(title: "Image 3"),
//     ImageItem(title: "Image 4"),
//     ImageItem(title: "Image 5"),
//   ];

//   Widget display(ImageItem item) {
//     return GestureDetector(
//       onDoubleTap: () {
//         setState(() {
//           item.isVisible = !item.isVisible;
//         });
//       },
//       child: SizedBox(
//         height: 200,
//         width: double.infinity,
//         child: Card(
//           color: Colors.cyan,
//           child: Stack(
//             children: [
//               if (item.isVisible)
//                 Container(
//                   height: 248,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: NetworkImage(
//                         "https://images6.alphacoders.com/597/597293.jpg",
//                       ),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               if (!item.isVisible)
//                 const Center(
//                   child: Text(
//                     'Double-tap to show image',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               if (item.isVisible)
//                 const Align(
//                   alignment: Alignment.bottomLeft,
//                   child: Padding(
//                     padding: EdgeInsets.all(16.0),
//                     child: Icon(
//                       Icons.favorite,
//                       color: Colors.red,
//                       size: 28,
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("New View"),
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//         itemCount: imageItems.length,
//         itemBuilder: (context, index) {
//           return display(imageItems[index]);
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ImageItem {
  final String title;
  bool isImageVisible;

  ImageItem({required this.title, this.isImageVisible = true});
}

class NewView extends StatefulWidget {
  const NewView({Key? key}) : super(key: key);

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  List<ImageItem> imageItems = [
    ImageItem(title: "Image 1"),
    ImageItem(title: "Image 2"),
    ImageItem(title: "Image 3"),
    ImageItem(title: "Image 4"),
    ImageItem(title: "Image 5"),
  ];

  void deleteImageFromAllCards() {
    setState(() {
      for (var item in imageItems) {
        item.isImageVisible = false;
      }
    });
  }

  Widget display(ImageItem item) {
    return GestureDetector(
      onDoubleTap: () {
        deleteImageFromAllCards();
      },
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
          color: Colors.cyan,
          child: Stack(
            children: [
              if (item.isImageVisible)
                Container(
                  height: 248,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images6.alphacoders.com/597/597293.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              if (!item.isImageVisible)
                const Center(
                  child: Text(
                    'image gone',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              if (item.isImageVisible)
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 28,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New View"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: imageItems.length,
        itemBuilder: (context, index) {
          return display(imageItems[index]);
        },
      ),
    );
  }
}
