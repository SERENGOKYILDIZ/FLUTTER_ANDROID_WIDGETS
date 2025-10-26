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

  int radioDeger = 0;

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
            RadioListTile(
                title: Text("Galatasaray"),
                value: 1,
                activeColor: Colors.green,  /// Seçilince olan renk
                groupValue: radioDeger,
                onChanged: (int? veri){
                  setState(() {
                    radioDeger = veri!;
                  });
                  print("Galatasaray seçildi!");
                },
            ),
            RadioListTile(
              title: Text("Fenerbahçe"),
              value: 2,
              activeColor: Colors.red,    /// Seçilince olan renk
              groupValue: radioDeger,
              onChanged: (int? veri){
                setState(() {
                  radioDeger = veri!;
                });
                print("Fenerbahçe seçildi!");
              },
            ),
            ElevatedButton(
                onPressed: (){
                  if(radioDeger==1){
                    print("Güncel olarak 'Galatasaray' seçili");
                  }
                  else if(radioDeger==2){
                    print("Güncel olarak 'Fenerbahçe' seçili");
                  }
                },
                child: Text("Göster")
            ),
          ],
        ),
      ),
    );
  }
}
