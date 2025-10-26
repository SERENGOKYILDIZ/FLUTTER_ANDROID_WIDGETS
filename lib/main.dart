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

  String resimAdi = "2021/09/sacakli-manti-one-cikan.jpg";

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
            Image.network("https://cdn.yemek.com/mncrop/620/388/uploads/$resimAdi"),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    resimAdi="2023/11/haydari-yemekcom.jpg";
                  });
                },
                child: Text("Resim 1")
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    resimAdi="2021/09/sacakli-manti-one-cikan.jpg";
                  });
                },
                child: Text("Resim 2")
            ),
          ],
        ),
      )
    );
  }
}
