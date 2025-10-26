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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Widgets'),
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

  var tfController = TextEditingController();
  String alinanVeri = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Yazınız",
              ),
            ),

            /// Böyle kullanılmaz normalde ama yazılabiliyor.
            FloatingActionButton(
              onPressed: (){
                print("Fab2 tıklandı!!");
              },
              tooltip: "Fab2",
              child: Icon(Icons.print),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            )
          ],
        ),
      ),
      /// NOT: Floating Button body'nin altında tanımlanır. Çünkü body'den bağımsız
      /// hareket eder.
      // floatingActionButton: FloatingActionButton(
      //     onPressed: (){
      //       print("Fab1 tıklandı!!");
      //     },
      //     tooltip: "Fab1",
      //     child: Icon(Icons.add),
      //     backgroundColor: Colors.deepPurpleAccent,
      //     foregroundColor: Colors.pink,
      // ),

      /// NOT: Aşağıdaki daha gelişmiş ve yazı yazılmış versiyonudur.
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          print("Fab1 tıklandı!!");
        },
        label: Text("FAB"),
        icon: Icon(Icons.add),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.pink,
      ),
    );
  }
}
