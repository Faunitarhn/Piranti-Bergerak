import 'package:flutter/material.dart';
import 'package:project2/controller/feed_controller.dart';
import 'package:project2/view/feed_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State <HomePage> createState() =>  HomePageState();
}

class  HomePageState extends State <HomePage> {
  @override
  Widget build(BuildContext context) {
    var feedController = FeedController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
        'Faun App',
      style: TextStyle
      (fontWeight: FontWeight.w500
      ),
      ),
      ),
      body: ListView.builder(
        itemCount: feedController.feeds.length,
        itemBuilder: (context, index) => FeedCard(
          feed: feedController.feeds[index],
          )
          )
    );
  }
}
