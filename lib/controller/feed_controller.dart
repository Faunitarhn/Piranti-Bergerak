import 'package:flutter/material.dart';
import 'package:project2/model/feed.dart';
import 'package:project2/model/feed_repository.dart';

class FeedController extends ChangeNotifier {
  List<Feed> feeds = FeedRepository().fetch();
  int get length => feeds.length;

  Feed feed(int index) {
    return feeds[index];
  }

  // Metode untuk toggle like pada feed
  void like(Feed feed) {
    Feed targetFeed = feeds.firstWhere((element) => element.id == feed.id);
    targetFeed.content.isLike = !targetFeed.content.isLike;
    notifyListeners();
  }

  // Metode untuk toggle bookmark pada feed
  void toggleBookmark(Feed feed) {
    Feed targetFeed = feeds.firstWhere((element) => element.id == feed.id);
    targetFeed.isBookmarked = !targetFeed.isBookmarked;
    notifyListeners();
  }

  // Mendapatkan semua feed yang di-bookmark
  List<Feed> getBookmarkedFeeds() {
    return feeds.where((feed) => feed.isBookmarked).toList();
  }

  // Refresh feeds dari repository
  void refresh() {
    feeds = FeedRepository().fetch();
    notifyListeners();
  }
}
