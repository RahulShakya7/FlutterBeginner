import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/arithmaticRoute');
                },
                child: const Text('Arithmatic'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/siRoute');
                },
                child: const Text('Simple Interest'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/areaCRoute');
                },
                child: const Text('Circle Area'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/nameRoute');
                },
                child: const Text('Names'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/richtextRoute');
                },
                child: const Text('Rich Text'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/columnRoute');
                },
                child: const Text('Column'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/outputSRoute');
                },
                child: const Text('Output Screen'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/containerRoute');
                },
                child: const Text('Container View'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/loadimagesRoute');
                },
                child: const Text('Add Images'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/registerRoute');
                },
                child: const Text('Register'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mediaRoute');
                },
                child: const Text('Media Query View'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/flexRoute');
                },
                child: const Text('Flexible View'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cardRoute');
                },
                child: const Text('Card View'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/gridRoute');
                },
                child: const Text('Grid View'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/stackRoute');
                },
                child: const Text('Stack View'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/appRoute');
                },
                child: const Text('App View'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/newRoute');
                },
                child: const Text('New View'),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dataRoute');
                },
                child: const Text('Data Table View'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
