import 'package:flutter/material.dart';
import 'package:project2/model/feed.dart';
import 'package:project2/model/feed_repository.dart';

class FeedController extends ChangeNotifier {
  List<Feed> feeds = FeedRepository().fetch();
  int get length => feeds.length;

  int get postCount => feeds.length;

  List<Feed> get bookmarkedFeeds =>
      feeds.where((Element) => Element.content.isBookmarked).toList();

  Feed feed(int index) {
    return feeds[index];
  }

  like(Feed feed) {
    feeds.firstWhere((Element) => Element.id == feed.id).content.isLike =
        !feed.content.isLike;
    notifyListeners();
  }

  toggleBookmark(Feed feed) {
    feeds.firstWhere((Element) => Element.id == feed.id).content.isBookmarked =
        !feed.content.isBookmarked;
    notifyListeners();
  }

  refresh() {
    feeds = FeedRepository().fetch();
    notifyListeners();
  }
}
