import 'package:flutter/material.dart';
import 'package:project2/controller/feed_controller.dart';
import 'package:project2/view/feed_card.dart';
import 'package:provider/provider.dart';

class FeedBookmarkPage extends StatelessWidget {
  const FeedBookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bookmarkedFeeds =
        context.watch<FeedController>().getBookmarkedFeeds();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarked Feeds'),
      ),
      body: bookmarkedFeeds.isEmpty
          ? const Center(
              child: Text(
                'No bookmarked feeds yet.',
                style: TextStyle(fontSize: 16),
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
