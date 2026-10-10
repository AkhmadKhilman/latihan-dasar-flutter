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
  runApp(const RichTextTest());
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

// Cara menggunakan dekorasi teks dan bayangan teks
class StylingText extends StatelessWidget {
  const StylingText({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Teks dengan garis bawah",
              style: TextStyle(
                fontSize: 25,
                decoration: TextDecoration.underline,
              ),
            ),

            SizedBox(height: 25),

            Text(
              "Teks yang dicoret",
              style: TextStyle(
                fontSize: 25,
                decoration: TextDecoration.lineThrough,
              ),
            ),

            SizedBox(height: 25),

            Text(
              "Teks dengan backgroundnya sendiri",
              style: TextStyle(
                fontSize: 25,
                backgroundColor: Colors.deepPurple,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 25),

            Text(
              "Teks dengan bayangannya",
              style: TextStyle(
                fontSize: 25,
                shadows: [Shadow(offset: Offset(2, 5), blurRadius: 3)],
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Care memposisikan teks baik di kiri, tengah mapupun kanan
class TeksAligmentTest extends StatelessWidget {
  const TeksAligmentTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Column(
            children: [
              Text(
                "Posisi di kiri",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "Posisi di tengah",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "Posisi di kanan",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 15),
              Text(
                "Posisi di tepat di tengah-tengah box",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Cara membuat sebuah paragraf terlihat rapih dan proposional
class MaxLineTextExample extends StatelessWidget {
  const MaxLineTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text(
            "Ini adalah sebuah paragraf yang akan di tampilkan menjadi lebih dari satu baris jika sudah memenuhi layar dan dapat menetukan berapa baris kalimat yang ingin di tampilkan dengan menggunakan MaxLines. Lalu ketika kalimat pada suatu paragraf terlalu panjang dan sudah melebihi batas maksimal baris yang telah di tentukan maka sisa kalimat itu akan menghilang. Maka dari itu fungsi TextOverflow dibuat agar teks yang berlebih itu terlihat rapih seperti menggunakan elipsis agar sisa teks menjadi (...), clip yang menghilangkan sisanya dan terlihat seperti terputus kalimat selanjutnya, fade yang membuat teks dibaris terahir sedikit memudar,  dan visible yang fungsinya mirip seperti clip yakni sisa kalimatnya jadi menghilang dan terlihat seperti terputus.",
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        backgroundColor: Colors.limeAccent,
      ),
    );
  }
}

// Cara membuat satu kalimat dengan perbedaan style di setiap kata nya
class RichTextTest extends StatelessWidget {
  const RichTextTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 25, color: Colors.white60),
              children: [
                TextSpan(
                  text: "Selamat datang di stasiun Purwokerto \n",
                  style: TextStyle(height: 2),
                ),

                TextSpan(
                  text: "KA ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    height: 2,
                  ),
                ),

                TextSpan(
                  text: "SERAYU",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    height: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
