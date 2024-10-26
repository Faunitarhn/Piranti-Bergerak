import 'dart:ui_web';

import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const url = 
    'https://www.shutterstock.com/image-photo/cartoon-artistic-image-barbie-girl-600nw-2483487385.jpg';
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Agar caption dan jumlah like rata kiri
        children: [
          //header
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(url),
            ),
            title: Text('Faunita'),
            subtitle: Text('Status'),
            trailing: Icon(Icons.arrow_right),
          ),
          //content
          Image.network(
            'https://cdns-images.dzcdn.net/images/artist/a3637460afc61a6def0986862a1e672f/1900x1900-000000-80-0-0.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.8,
            fit: BoxFit.cover,
          ),
          //footer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Mengatur ikon di kiri
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {
                        // Add your like action here
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.chat_bubble_outline),
                      onPressed: () {
                        // Add your comment action here
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {
                        // Add your share action here
                      },
                    ),
                    const Spacer(), // Menambahkan spacer untuk memisahkan ikon
                    IconButton(
                      icon: Icon(Icons.bookmark_border),
                      onPressed: () {
                        // Add your save action here
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 4.0), // Spasi antara row dan teks
                const Text('1,234 likes'), // Ganti dengan variabel dinamis jika perlu
                const SizedBox(height: 4.0), // Spasi antara jumlah like dan caption
                const Text('cantiknyoooooo'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}