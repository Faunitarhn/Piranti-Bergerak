import 'package:flutter/material.dart';
import 'package:project2/controller/feed_controller.dart';
import 'package:project2/view/feed_bookmark.dart';
import 'package:project2/view/feed_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<FeedController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Faun App',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const FeedBookmarkPage(),
              ));
            },
            icon: const Icon(Icons.bookmark_outline),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
          controller.refresh();
        },
        child: ListView.builder(
          itemCount: controller.feeds.length,
          itemBuilder: (context, index) => FeedCard(
            feed: controller.feed(index),
          ),
        ),
      ),
    );
  }
}
