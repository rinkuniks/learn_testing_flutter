import 'package:flutter/material.dart';
import 'package:learn_testing/Login.dart';
import 'package:learn_testing/feature/qoute/view/qoute_page.dart';
import 'package:provider/provider.dart';

import 'feature/qoute/services/quote_service.dart';
import 'feature/qoute/view_model/quote_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => QuoteProvider(quoteService: QuoteService()),
        child: MaterialApp(
          color: Colors.white,
          debugShowCheckedModeBanner: false,
          title: 'Learn Flutter Testing',
          home: MyHomePage(title: 'Home Page'),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => UnitTest()),);
              },
              child: const Text(
                "Counter Test Case",
                style: TextStyle(color: Colors.black),
              ),
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: () {},
              child: const Text("Button Widget Test Case", style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const Text("Login", style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const QuoteScreen()),
                );
              },
              child: const Text("List", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
