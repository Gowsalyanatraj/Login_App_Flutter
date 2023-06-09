import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GAppTheme.lightTheme,
      darkTheme: GAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const AppHome(),
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
            Text("Heading", style: Theme.of(context).textTheme.headline2),
            Text("Sub-Heading", style: Theme.of(context).textTheme.subtitle2),
            Text("Paragraph", style: Theme.of(context).textTheme.bodyText1),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: const Text('outlined'),
            ),
            const SizedBox(height: 15),
            const Image(image: AssetImage('assets/images/book.png'))
          ],
        ),
      ),
    );
  }
}
