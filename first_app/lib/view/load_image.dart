import 'package:flutter/material.dart';

class LoadImageView extends StatefulWidget {
  const LoadImageView({super.key});

  @override
  State<LoadImageView> createState() => _LoadImageViewState();
}

class _LoadImageViewState extends State<LoadImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Image'),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('assets/images/car1.jpg'),
              ),
              Image.network(
                  'https://hips.hearstapps.com/hmg-prod/images/2023-honda-civic-sedan-touring-front-1663855649.jpg?crop=0.612xw:0.456xh;0.199xw,0.382xh&resize=1200:*'),
              // for (int i = 0; i < 100; i++)
              // if(i % 2 == 0) Text(i.toString())
              // const CircleAvatar(
              //   radius: 150,
              //   backgroundImage: AssetImage('assets/images/car1.jpg'),
              // ),
              // Image.asset('assets/images/car1.jpg'),
              // Image.asset('assets/images/car2.jpg'),
              Image.network(
                  'https://lucidmotors.com/s3fs-public/2023-03/lucid-air-pure-whitney.webp?VersionId=_P_Bi4coq9vSXwlT5E_KkS1frYgvgjm5')
            ],
          ),
        ));
  }
}
