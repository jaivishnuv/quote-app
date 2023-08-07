import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int index = 0;

  void _showQuote() {
    setState(() {
      index++;
    });
  }

  List quotes = [
    'The greatest glory in living lies not in never falling, but in rising every time we fall. Nelson Mandela.',
    'The way to get started is to quit talking and begin doing.',
    'If life were predictable it would cease to be life, and be without flavor.',
    'If you set your goals ridiculously high and it a failure, you will fail above everyone else success.',
    'Life is what happens when you are busy making other plans.',
    'Spread love everywhere you go. Let no one ever come to you without leaving happier.',
    'When you reach the end of your rope, tie a knot in it and hang on.',
    'Always remember that you are absolutely unique. Just like everyone else.',
    'Dont judge each day by the harvest you reap but by the seeds that you plant.',
    'The future belongs to those who believe in the beauty of their dreams. ',
    'May you live all the days of your life.',
    'Life itself is the most wonderful fairy tale.',
    'Do not let making a living prevent you from making a life.',
    'Life is ours to be spent, not to be saved.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 140),
            Container(
                width: 300,
                height: 200,
                margin: const EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text(
                  quotes[index % quotes.length],
                  style: TextStyle(
                      color: Colors.grey.shade900, fontStyle: FontStyle.italic),
                ))),
            const Divider(
              thickness: 1.0,
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
                onPressed: _showQuote,
                style: ElevatedButton.styleFrom(primary: Colors.green),
                icon: const Icon(Icons.wb_sunny),
                label: const Text(
                  "inspire me!",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
