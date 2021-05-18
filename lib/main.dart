import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quote> quoteList = [
    Quote(text: "This is my first content or quote", author: "Author 1"),
    Quote(text: "This is my second content or quotes", author: "Author 2"),
    Quote(text: "This is my third content or quotes", author: "Author 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todo List",
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: quoteList
              .map((quote) => QuoteCard(
                    quote: quote,
                    delete: () {
                      print("Clicked");
                      setState(() {
                        quoteList.remove(quote);
                      });
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
