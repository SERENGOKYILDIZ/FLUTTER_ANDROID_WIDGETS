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
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true, /// Şifre girer gibi * ile doldurur.
                keyboardType: TextInputType.datetime, /// Açılan klavye belirlenir.
                textAlign: TextAlign.center, /// hint yazısını ortalar.
                maxLength: 4, /// Karakter sınırı koyar.
                style: TextStyle( /// İçine girilen bilginin sitili değiştirilir.
                  color: Colors.white,
                ),
                controller: tfController,
                decoration: InputDecoration(
                  hintText: "Yazınız",
                  hintStyle: TextStyle( /// hint yazısının sitili değiştirilir.
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                  labelText: "Email", /// Başındaki yazıyı belirleriz.
                  labelStyle: TextStyle( /// Başındaki yazının sitili değiştirilir.
                    color: Colors.red,
                    fontSize: 30,
                  ),
                  filled: true, /// Arkaplanı düzenlemek için izin aldık.
                  fillColor: Colors.green,
                  border: OutlineInputBorder( /// Çevçere oluşturmak için.
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  prefixIcon: Icon(Icons.cabin), /// Başına ikon eklemeye yarar.
                ),
              ),
            ),
            Text("Gelen Veri : ${alinanVeri}", style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
