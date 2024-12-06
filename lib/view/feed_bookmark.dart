import 'package:flutter/material.dart';
import 'package:project2/controller/feed_controller.dart';
import 'package:project2/view/feed_card.dart';
import 'package:provider/provider.dart';

class FeedBookmarkPage extends StatelessWidget {
  const FeedBookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<FeedController>();

    final bookmarkedFeeds = controller.bookmarkedFeeds;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bookmarks',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: bookmarkedFeeds.isEmpty
          ? const Center(
              child: Text(
                'No bookmarks yet!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            )
          : ListView.builder(
              itemCount: bookmarkedFeeds.length,
              itemBuilder: (context, index) => FeedCard(
                feed: bookmarkedFeeds[index],
              ),
            ),
    );
  }
}
