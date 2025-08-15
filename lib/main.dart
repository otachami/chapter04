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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(context: context, builder: (context){
                    return const AlertDialog(
                      title: Text('ログインしました！'),
                    );
                  },
                  );
                },
                child: Text('ログインする')),
            ElevatedButton(
                onPressed: () {
                  showDialog(context: context, builder: (context){
                    return const AlertDialog(
                      title: Text('新規登録をしました！'),
                    );
                  },
                  );
                },
                child: Text('新規登録をする')),
            TextButton(
                onPressed: () {
                  showDialog(context: context, builder: (context){
                    return const AlertDialog(
                      title: Text('パスワードを変更しました！'),
                    );
                  },
                  );
                },
                child: Text('パスワードを忘れた方はこちら'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
