import 'package:flutter/material.dart';
import 'quote.dart';

class quoteCard extends StatelessWidget {
  const quoteCard({
    Key? key,
    required this.quotes,
    required this.delete,
  }) : super(key: key);

  final quotes;
  final Function delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quotes.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                quotes.authors,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
              FlatButton.icon(
                onPressed: (() => delete),
                label: Text('Delete Text'),
                icon: Icon(
                  Icons.delete,
                ),
              ),
            ]),
      ),
    );
  }
}
