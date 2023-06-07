import 'package:flutter/material.dart';

class NewAppView extends StatefulWidget {
  const NewAppView({super.key});

  @override
  State<NewAppView> createState() => _NewAppViewState();
}

class _NewAppViewState extends State<NewAppView> {
  Widget display(int i) {
    return GestureDetector(
      onDoubleTap: () {
        // Handle tap event here
        // print("Card $i tapped");
      },
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
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
                const Positioned(
                  top: 20,
                  right: 20,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 24,
                  ),
                ),
                const Positioned(
                  bottom: 20,
                  left: 20,
                  child: Icon(
                    Icons.thumb_up_alt,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const Positioned(
                  bottom: 20,
                  left: 60,
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Text(
                "Walter White",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "batch",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return display(index);
        },
      ),
    );
  }
}
