import 'package:flutter/material.dart';
import 'package:project2/view/feed_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State <HomePage> createState() =>  HomePageState();
}

class  HomePageState extends State <HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
        'Faun App',
      style: TextStyle
      (fontWeight: FontWeight.w500
      ),
      ),
      ),
      body: ListView(
        children: [
          FeedCard(),
          FeedCard(),
          FeedCard(),
          FeedCard(),
          FeedCard(),
          FeedCard(),
          FeedCard(),
        ],
      ),
    );
  }
}
