import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue,
            title: const Text('Home', style: TextStyle(color: Colors.white))),
        body: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Home Page', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home, size: 50, color: Colors.blue),
                Icon(Icons.star, size: 50, color: Colors.blue),
                Icon(Icons.favorite, size: 50, color: Colors.blue)
              ],
            ),
            SizedBox(height: 20),
            Image(
              height: 200,
              width: 200,
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.star),
        ));
  }
}
