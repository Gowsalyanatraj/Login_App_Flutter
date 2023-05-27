import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('.appable/'),
        leading: const Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_shopping_cart),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Heading"),
            const Text("Sub-Heading"),
            const Text("Paragraph"),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: const Text('outlined '),
            ),
            const SizedBox(height: 20),
            Image(image: AssetImage('assets/images/book.png'))
          ],
        ),
      ),
    );
  }
}
