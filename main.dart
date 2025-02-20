//import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';
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
      home: const Sample(title: 'リスト一覧'),
    );
  }
}

class Sample extends StatefulWidget {
  const Sample({super.key, required this.title});
  final String title;

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(todoList[index]),
              trailing: ElevatedButton(
                onPressed: () {
                  setState(() {
                    todoList.removeAt(index);
                  });
                },
                child: Text("削除", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
	            ),
            ),
          );
        },
      ),
      //ボタン----------------------------------------------------------------------------------
      floatingActionButton:FloatingActionButton(
        child: const Text('+'),
        onPressed: () async {
          final newListText = await Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            // 遷移先の画面としてリスト追加画面を指定
            return Sample2(title: 'リスト追加');
          }),
        );
        if (newListText != null && newListText.isNotEmpty) {
          // キャンセルした場合は newListText が null となるので注意
          setState(() {
            // リスト追加
            todoList.add(newListText);
          });
        }
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return const Sample2(title: 'リスト追加');
          //     },
          //   ),
          // );
        },
      ),
    );
  }
}

class Sample2 extends StatefulWidget {
  const Sample2({super.key, required this.title});
  final String title;

  @override
  State<Sample2> createState() => _SampleState2();
}

class _SampleState2 extends State<Sample2> {
  
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (String value) {
                setState(() {
                  _text = value;
                });
              },
            ),
            //ボタン----------------------------------------------------------------------------------
            ElevatedButton(
              child: const Text('リスト追加'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 224, 224, 224),
                foregroundColor: Colors.black,
                side: const BorderSide(
                  color: const Color.fromARGB(255, 224, 224, 224),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(_text);
              },
            ),
            ElevatedButton(
              child: const Text('キャンセル'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 224, 224, 224),
                foregroundColor: Colors.black,
                side: const BorderSide(
                  color: const Color.fromARGB(255, 224, 224, 224),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
