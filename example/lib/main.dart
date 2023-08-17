import 'package:dglk_bottom_sheet_route/dglk_bottom_sheet_route.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  BottomSheetRoute(
                      child: const Material(
                    child: SizedBox(
                      height: 400,
                      child: Center(child: Text("Here is Bottom sheet")),
                    ),
                  )),
                );
              },
              child: const Text('Open Bottom Sheet'),
            )
          ],
        ),
      ),
    );
  }
}
