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

  var toggleDurumlari = [true, false, true];
  int secilenIndex = 0;

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
            ToggleButtons(
                isSelected: toggleDurumlari,
                onPressed: (int secilen){
                  secilenIndex = secilen;
                  print("${secilenIndex+1}. toggle secildi");

                  setState(() {
                    toggleDurumlari[secilenIndex] = !toggleDurumlari[secilenIndex];
                  });
                },
                color: Colors.red,            /// Seçilmediği zamanki rengi
                selectedColor: Colors.green,  /// Seçildiği zamanki rengi
                fillColor: Colors.black54,    /// Seçildiği zamanki arkaplan rengi
                children: [
                  Icon(Icons.looks_one),
                  Icon(Icons.looks_two),
                  Icon(Icons.looks_3),
                ],
            ),
            ElevatedButton(
                onPressed: (){
                  print("En son seçilen = ${secilenIndex+1}");
                },
                child: Text("Göster")
            ),
          ],
        ),
      ),
    );
  }
}
