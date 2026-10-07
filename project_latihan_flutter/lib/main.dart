import 'package:flutter/material.dart';

void main() {
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

  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const new({super.key});
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // const greeting = "Hello Guys...";
  static const greeting = "Hello Guys...";

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
