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

  var ulkelerListe = <String>[];
  String secilenUlke = "Türkiye";

  @override
  void initState() {
    super.initState();

    ulkelerListe.add("Türkiye");
    ulkelerListe.add("İtalya");
    ulkelerListe.add("Almanya");
    ulkelerListe.add("Çin");
    ulkelerListe.add("Amerika");
    ulkelerListe.add("İran");
  }

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


            DropdownButton<String>(
              value: secilenUlke,
              items: ulkelerListe.map<DropdownMenuItem<String>>((String myValue){
                return DropdownMenuItem<String>(
                  value: myValue,
                  child: Text("Ülke : $myValue", style: TextStyle(color: Colors.deepPurple, fontSize: 20),),
                );
              }).toList(),
              icon: Icon(Icons.arrow_drop_down),
              onChanged: (String? secilenVeri){
                setState(() {
                  secilenUlke = secilenVeri!;
                });
              },
            ),

            Text("Secilen ulke : ${secilenUlke}"),

          ],
        ),
      )
    );
  }
}
