import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
      home: Anasayfa()
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                /// Bir kez tıklanınca çalışır
                print("Container'a tıklandı!");
              },
              onDoubleTap: (){
                /// İki kez tıklanınca çalışır
                print("Container'a çift tıklandı!");
              },
              onLongPress: (){
                /// Uzun süre tıklanınca çalışır
                print("Container'a uzun süre tıklandı!");
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
            )
          ],
        ),
      )
    );
  }
}
