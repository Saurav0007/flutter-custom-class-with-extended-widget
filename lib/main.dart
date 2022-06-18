import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: quotelist(),
  ));
}

class quotelist extends StatefulWidget {
  const quotelist({Key? key}) : super(key: key);
  @override
  State<quotelist> createState() => _quotelistState();
}

class _quotelistState extends State<quotelist> {
  List<quotes> quote = [
    quotes(authors: 'saurav', text: 'you cant see your progress until you try'),
    quotes(
        authors: 'Saiyed Saurav',
        text: "you won't achive things until you move from your comfort zone"),
    quotes(
        authors: 'Mohammad Saurav',
        text: "there is nothing you can do when your luck run out just pray"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text('List of Data'),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Column(
          children: quote
              .map((e) => quoteCard(
                  quotes: e,
                  delete: () {
                    setState(() {
                      quote.remove(e);
                    });
                  }))
              .toList(),
        ));
  }
}
