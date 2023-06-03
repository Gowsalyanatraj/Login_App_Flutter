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
      theme:
          ThemeData(brightness: Brightness.light,
           primarySwatch:MaterialColor(0xFFFFE200, <int, Color>{
       50: Color(0xFFE8EAF6),
      100: Color(0xFFC5CAE9),
      200: Color(0xFF9FA8DA),
      300: Color(0xFF7986CB),
      400: Color(0xFF5C6BC0),
      600: Color(0xFF3949AB),
      700: Color(0xFF303F9F),
      800: Color(0xFF283593),
      900: Color(0xFF1A237E),// correcting this error
           })
           ),
      darkTheme: ThemeData(brightness: Brightness.dark),
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
        backgroundColor: Colors.indigo.shade300,
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
