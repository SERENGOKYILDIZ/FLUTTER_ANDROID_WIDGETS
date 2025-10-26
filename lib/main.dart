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

  bool switchControl = false;

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
            Switch(
                value: switchControl,
                onChanged: (veri){
                  setState(() {
                    switchControl = veri;
                    print("Switch durumu : $switchControl");
                  });
                },
                activeTrackColor: Colors.lightGreenAccent,    // true olduğu zamanki rengi
                inactiveTrackColor: Colors.black54,           // false olduğu zamanki rengi
                activeThumbColor: Colors.pinkAccent,          // true iken yuvarlağın rengi
                inactiveThumbColor: Colors.white,             // true iken yuvarlağın rengi

            ),
            ElevatedButton(
                onPressed: (){
                    print("Switch durumu : $switchControl");
                },
                child: Text("Göster")
            ),
          ],
        ),
      ),
    );
  }
}
