import 'package:flutter/material.dart';
import 'package:new_project/themes/app_color_constant.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Profile"),
          backgroundColor: AppColorConstant.appbarColor,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Hello",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "OpenSans",
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Username'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Login"))
                ],
              ),
            ),
          ),
        ));
  }
}
