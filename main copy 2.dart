import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//1ページ目--------------------------------------------------------------------
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

//2ページ目-------------------------------------------------------
class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.title});
  final String title;

  @override
  State<SecondPage> createState() => _SecondPageState();
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
  //       useMaterial3: true,
  //     ),
  //     home: const Sample(title: '2ページ目'),
  //   );
  // }
}

class Sample extends StatefulWidget {
  const Sample({super.key, required this.title});
  final String title;

  @override
  State<Sample> createState() => _SampleState();
}


class _SecondPageState extends State<SecondPage> {
  int counter = 0;
  int amari = 0;
  String message = 'hello';

  void _incrementCounter() {
    setState(() {
      counter++;
      print(counter);
      amari = counter % 2;

       if (amari == 0) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) { return SecondPage(title: 'bbbb'); },
          ),
        );
      } else {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) { return Sample(title: 'aaaa'); },
          ),
        );
      }
    });
  }

  // void a(){
  //   setState(() {
      
  //   }
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
              'ボタンを押すと切り替わります。:',
            ),
            Text(
              message , 
              style: Theme.of(context).textTheme.headlineMedium,
            ),
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
                _incrementCounter();
              },
            ),
          ],
        ),
      ),
      //以下デフォルトのカウントアップボタン--------------------------------------------------
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
      //-----------------------------------------------------------------------------------
    );
  }
}


class _SampleState extends State<Sample> {
  int counter = 0;
  int amari = 0;
  String message = 'hello';

  void _incrementCounter() {
    setState(() {
      counter++;
      print(counter);
      amari = counter % 2;

       if (amari == 0) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) { return const Sample(title: 'cccc'); },
          ),
        );
      } else {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) { return const SecondPage(title: 'dddd'); },
          ),
        );
      }
    });
  }

  // void a(){
  //   setState(() {
      
  //   }
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
              'ボタンを押すと切り替わります。:',
            ),
            Text(
              message , 
              style: Theme.of(context).textTheme.headlineMedium,
            ),
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
                _incrementCounter();
              },
            ),
          ],
        ),
      ),
      //以下デフォルトのカウントアップボタン--------------------------------------------------
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
      //-----------------------------------------------------------------------------------
    );
  }
}
