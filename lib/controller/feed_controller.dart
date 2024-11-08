import 'package:project2/model/feed.dart';

class FeedController {
  List<Feed> feeds = [
    Feed(
        user: User(
            name: 'Faunita Raihan',
            avatar:
                'https://rukminim2.flixcart.com/image/850/1000/kbxzbm80/stuffed-toy/g/b/t/mickey-and-minnie-mouse-couple-plush-toy-32-the-simplifiers-original-imaft6pdamfnvkcf.jpeg?q=90&crop=false',
            place: 'Bandung, Indonesia'),
        content: Content(
            image:
                'https://images.pexels.com/photos/42415/pexels-photo-42415.jpeg?auto=compress&cs=tinysrgb&w=600',
            likes: '1.000 likes',
            description: 'gatau apa dah')),
    Feed(
        user: User(
            name: 'Asep Surasep',
            avatar:
                'https://images.pexels.com/photos/16516093/pexels-photo-16516093/free-photo-of-a-young-girl-reading-a-book.jpeg?auto=compress&cs=tinysrgb&w=600',
            place: 'Subang, Indonesia'),
        content: Content(
            image:
                'https://images.pexels.com/photos/17159617/pexels-photo-17159617/free-photo-of-mickey-mouse-figure-over-disneys-hollywood-studios-sign.jpeg?auto=compress&cs=tinysrgb&w=600',
            likes: '1.000 likes',
            description: 'yang penting tugas beres')),
    Feed(
        user: User(
            name: 'Iceu Juiceu',
            avatar:
                'https://images.pexels.com/photos/3318669/pexels-photo-3318669.jpeg?auto=compress&cs=tinysrgb&w=600',
            place: 'Garut, Indonesia'),
        content: Content(
            image:
                'https://images.pexels.com/photos/1464175/pexels-photo-1464175.jpeg?auto=compress&cs=tinysrgb&w=600',
            likes: '1.000 likes',
            description: 'Alhamdulillah'))
  ];
}
