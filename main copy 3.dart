import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: const Sample(title: '1ページ目'),
    );
  }
}

class Sample extends StatefulWidget {
  const Sample({super.key, required this.title});
  final String title;

  @override
  State<Sample> createState() => _SampleState();
}

class Sample2 extends StatefulWidget {
  const Sample2({super.key, required this.title});
  final String title;

  @override
  State<Sample2> createState() => _SampleState2();
}

class _SampleState extends State<Sample> {
  // void _incrementCounter() {
  //   setState(() {
  //       Navigator.of(context).push(
  //         MaterialPageRoute(
  //           builder: (context) { return const Sample2(title: 'dddd'); },
  //         ),
  //       );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ボタンを押すと切り替わります。',
            ),
            // Text(
            //   "a", 
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            //ボタン----------------------------------------------------------------------------------
            OutlinedButton(
              child: const Text('2ページ目へ'),
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 224, 224, 224),
                foregroundColor: Colors.black,
                side: const BorderSide(
                  color: const Color.fromARGB(255, 224, 224, 224),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) { return const Sample2(title: '2ページ目'); },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SampleState2 extends State<Sample2> {
  // void _incrementCounter() {
  //   setState(() {
  //       Navigator.of(context).push(
  //         MaterialPageRoute(
  //           builder: (context) { return const Sample2(title: 'dddd'); },
  //         ),
  //       );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ボタンを押すと切り替わります。',
            ),
            // Text(
            //   "a", 
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            //ボタン----------------------------------------------------------------------------------
            // OutlinedButton(
            //   child: const Text('2ページ目へ'),
            //   style: OutlinedButton.styleFrom(
            //     backgroundColor: const Color.fromARGB(255, 224, 224, 224),
            //     foregroundColor: Colors.black,
            //     side: const BorderSide(
            //       color: const Color.fromARGB(255, 224, 224, 224),
            //     ),
            //   ),
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (context) { return const Sample2(title: 'dddd'); },
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
