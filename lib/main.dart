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
            ElevatedButton(
                onPressed: (){
                  print("Elevated Button'a tiklandi!");
                },
                child: Text("Elevated Button"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.black, /// Gölge rengini belirler
                  elevation: 10, /// Gölgenin büyüklüğünü belirler
                  /// V /// Çap verme işi ama ben sıfır yaptm dikdörtgen oldu
                  shape: RoundedRectangleBorder( 
                    borderRadius: BorderRadius.zero
                  ),
                ),
            ),
            TextButton(
                onPressed: (){
                  print("Text Button'a tiklandi!");
                },
                child: Text("Text Button"),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 10,
                  /// V /// Çap verme işi daha az verdim iyi oldu.
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.red)
                    ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
