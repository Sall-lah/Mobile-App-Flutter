import 'package:flutter/material.dart';
import 'card_quote.dart';
import 'quote.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

// Still Dont know what is this
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _HomeState();
}

// Kinda know wat this is
class _HomeState extends State<MyApp> {

  List<Quote> quotes = [
    Quote(
      text: 'The only thing we have to fear is fear itself.',
      author: 'Franklin D. Roosevelt',
    ),
    Quote(
      text: 'In the middle of difficulty lies opportunity.',
      author: 'Albert Einstein',
    ),
    Quote(
      text: 'Be the change that you wish to see in the world.',
      author: 'Mahatma Gandhi',
    ),
    Quote(
      text:
          'The future belongs to those who believe in the beauty of their dreams.',
      author: 'Eleanor Roosevelt',
    ),
    Quote(
      text: 'You miss 100% of the shots you don’t take.',
      author: 'Wayne Gretzky',
    ),
    Quote(
      text: 'The purpose of our lives is to be happy.',
      author: 'Dalai Lama',
    ),
    Quote(
      text: 'Life is what happens when you’re busy making other plans.',
      author: 'John Lennon',
    ),
    Quote(
      text:
          'Success is not final, failure is not fatal: it is the courage to continue that counts.',
      author: 'Winston Churchill',
    ),
    Quote(
      text: 'Do what you can, with what you have, where you are.',
      author: 'Theodore Roosevelt',
    ),
    Quote(text: 'Happiness depends upon ourselves.', author: 'Aristotle'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Quotes List',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map((quote) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0), // spacing between cards
              child: CardQuote(quote: quote),
            )).toList(),),
    );
  }
}

// class _MyAppState extends State<MyApp> {
//   double size = 100;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text(
//           'Le Tachyon',
//           style: TextStyle(
//             fontFamily: 'Montserrat',
//             fontWeight: FontWeight.bold,
//             color: Color.fromARGB(255, 0, 0, 0),
//           ),
//         ),
//         backgroundColor: Colors.greenAccent,
//       ),

//       body: Container(
//         alignment: Alignment.center,
//         child: Image.asset('assets/agnes.png', height: size, fit: BoxFit.cover),
//       ),

//       floatingActionButton: FloatingActionButton.extended(
//         backgroundColor: Colors.greenAccent,
//         onPressed: () {
//           setState(() {
//             size += 100.0;
//           });
//         },
//         label: const Text('Increase Tachyon', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
//       ),
//     );
//   }
// }