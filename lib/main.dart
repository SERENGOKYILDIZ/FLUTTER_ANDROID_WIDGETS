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

  var tfTarih = TextEditingController();
  var tfSaat = TextEditingController();

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
            TextField(
              controller: tfSaat,
              readOnly: true, ///-> Klavyenin açılmaması için ekkledik.
              decoration: InputDecoration(
                hintText: "Saat giriniz",
              ),
              onTap: (){ ///-> TextField'a tıklanınca timePicker açılacak.
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.fromDateTime(DateTime.now()), ///-> Otomatik anlık zamanı alacak.
                )
                .then((alinanSaat) {
                    setState(() {
                      tfSaat.text = "${alinanSaat!.hour}:${alinanSaat!.minute.toString().padLeft(2, '0')}";
                      ///-> padLeft ile 00:00 formanına uygun hale getirdik.
                    });
                  }
                );
              },
            ),
            TextField(
              controller: tfTarih,
              readOnly: true, ///-> Klavyenin açılmaması için ekkledik.
              decoration: InputDecoration(
                hintText: "Tarih giriniz",
              ),
              onTap: (){ ///-> TextField'a tıklanınca dataPicker açılacak.
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(), ///-> Otomatik anlık zamanı alacak.
                  firstDate: DateTime(2000),   ///-> Alt sınır
                  lastDate: DateTime(2050),    ///-> Üst sınır
                )
                    .then((alinanTarih) {
                  setState(() {
                    tfTarih.text = "${alinanTarih!.day}/${alinanTarih!.month}/${alinanTarih!.year}";
                  });
                }
                );
              },
            ),
          ],
        ),
      )
    );
  }
}
