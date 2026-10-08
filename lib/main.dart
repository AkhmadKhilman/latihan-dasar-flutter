import 'package:flutter/material.dart';

void main() {
  // Menampilkan MaterialApp atau tampilan aplikasi langsung didalam void main
  // runApp(
  //   MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       body: Center(
  //         child: Text(
  //           "Assalamualaikum...",
  //           style: TextStyle(
  //             color: Color.fromARGB(255, 255, 230, 0),
  //             fontSize: 24,
  //           ),
  //         ),
  //       ),
  //       backgroundColor: Color.fromARGB(255, 0, 112, 19),
  //     ),
  //   ),
  // );

  // Memanggil class yang berisi MaterialApp
  runApp(const SpacingWord());
}

// Pembuatan class yang berisi MaterialApp dengan extends ke statelessWdiget
class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  //valriable const disini wajib menggunakan static agar dapat dijalankan
  // const greeting = "Hello Guys...";
  static const greeting = "Hello Guys...";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            greeting,
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 28, 0, 94),
              backgroundColor: Color.fromARGB(255, 64, 223, 2),
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 234, 0, 255),
      ),
    );
  }
}

// Penggunaan class MaterialApp yang memanggil tampilan dan style text di dalam class lain
class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: MyText()),
        backgroundColor: const Color.fromARGB(255, 234, 0, 255),
      ),
    );
  }
}

// Penggunaan class yang membuat khusus text dan style didalam aplikasi
class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Walaikum Salam...",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight(1000),
        color: Colors.blue,
      ),
    );
  }
}

// Cara menggunakan bold, italic, dan semi-bold didalam styling text
class FontStyleApp extends StatelessWidget {
  const FontStyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Dalam Kondisi Normal", style: TextStyle(fontSize: 25)),
            Text(
              "Dalam kondisi Bold",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Dalam kondisi Semi Bold",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            Text(
              "Dalam kondisi Italic",
              style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
            ),
            MyText(),
          ],
        ),
      ),
    );
  }
}

// cara penggunaan spasi per text, per huruf, per kata, bahkan per spasi kata jika ditambahn dengan '\n'
class SpacingWord extends StatelessWidget {
  const SpacingWord({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Spasi per Huruf",
              style: TextStyle(fontSize: 25, letterSpacing: 10),
            ),

            SizedBox(height: 20),

            Text(
              "Spasi per Kata",
              style: TextStyle(fontSize: 25, wordSpacing: 15),
            ),

            SizedBox(height: 20),

            Text(
              "Spasi \n per \n Baris",
              style: TextStyle(fontSize: 25, height: 4),
            ),
            Text("Spasi \n per \n Baris", style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
