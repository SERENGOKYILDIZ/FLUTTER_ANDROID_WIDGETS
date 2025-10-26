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

  bool kotlinDurum = false;
  bool dartDurum = false;

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
            CheckboxListTile(
                title: Text("Kotlin"),
                value: kotlinDurum,
                controlAffinity: ListTileControlAffinity.leading, /// Sol tarafta gözükecekk yazı
                checkColor: Colors.red, /// Seçilince seçme okunun rengi
                activeColor: Colors.deepPurpleAccent, /// Seçilince seçme içinin rengi
                onChanged: (bool? veri){
                  print("Kotlin secildi : $veri");
                  setState(() {
                    kotlinDurum = veri!;
                  });
                },
            ),
            CheckboxListTile(
              title: Text("Dart"),
              value: dartDurum,
              controlAffinity: ListTileControlAffinity.leading, /// Sol tarafta gözükecekk yazı
              onChanged: (bool? veri){
                print("Dart secildi : $veri");
                setState(() {
                  dartDurum = veri!;
                });
              },
            ),
            ElevatedButton(
                onPressed: (){
                  print("Kotlin : $kotlinDurum, Dart : $dartDurum");
                },
                child: Text("Göster")
            )
          ],
        ),
      ),
    );
  }
}
