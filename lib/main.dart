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
  runApp(const MyApp());
}

// Pembuatan class yang berisi MaterialApp dengan extends ke statelessWdiget
// class MyApp extends StatelessWidget {
//   const new({super.key});

//  //valriable const disini wajib menggunakan static agar dapat dijalankan
//   // const greeting = "Hello Guys...";
//   static const greeting = "Hello Guys...";

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             greeting,
//             style: TextStyle(
//               fontSize: 25,
//               color: Color.fromARGB(255, 28, 0, 94),
//               backgroundColor: Color.fromARGB(255, 64, 223, 2),
//             ),
//           ),
//         ),
//         backgroundColor: Color.fromARGB(255, 234, 0, 255),
//       ),
//     );
//   }
// }

// Penggunaan class MaterialApp yang memanggil tampilan dan style text di dalam class lain
class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        color: Color.fromARGB(255, 82, 0, 175),
      ),
    );
  }
}
