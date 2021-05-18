import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(' ${quote.text} '),
            SizedBox(
              height: 18,
            ),
            Text(' ${quote.author}'),
            SizedBox(
              height: 8,
            ),
            ElevatedButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text("remove Quote"))
          ],
        ),
      ),
    );
  }
}
